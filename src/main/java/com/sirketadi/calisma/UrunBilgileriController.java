package com.sirketadi.calisma;

import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import UrunProperty.UrunBilgileriProperty;
import Utils.DB;

@Controller
public class UrunBilgileriController {

	DB db = new DB();

	public static String kategori_adi;
	public static String urun_adi;

	@RequestMapping(value = "/urunbilgisi/{kategori}/{urun}/{id}", method = RequestMethod.GET)
	String urunbilgisi(@PathVariable String id, Model model, @PathVariable String kategori, @PathVariable String urun) {
		String fiyatkontrol = "";
		String kisacikkontrol = "";
		String editorkontrol = "";
		String edit = "";
		ArrayList<UrunBilgileriProperty> editfiyat = new ArrayList<UrunBilgileriProperty>();
		try {
			String query = "SELECT urun_editor,urun_fiyat,urun_kisacik FROM urun_bilgileri WHERE urun_id = '" + id
					+ "'";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {
				UrunBilgileriProperty editorfiyat = new UrunBilgileriProperty();
				fiyatkontrol = rs.getString("urun_fiyat");
				kisacikkontrol = rs.getString("urun_kisacik");
				editorkontrol = rs.getString("urun_editor");
				System.err.println("fiyatkontrol" + fiyatkontrol);
				System.err.println("kisacikkontrol" + kisacikkontrol);
				if (fiyatkontrol.equals("") || kisacikkontrol.equals("") || editorkontrol.equals("")) {

					if (fiyatkontrol.equals("") && kisacikkontrol.equals("") && editorkontrol.equals("")) {
						fiyatkontrol = "Ürün fiyatý boþ geçilmiþtir.";
						kisacikkontrol = "Ürün kýsa açýklamasý boþ geçilmiþtir";
						editorkontrol="Ürün editör açýklamasý boþ geçilmiþtir";
					} else if (fiyatkontrol.equals("")) {
						fiyatkontrol = "Ürün fiyatý boþ geçilmiþtir.";
					} else if (kisacikkontrol.equals("")) {
						kisacikkontrol = "Ürün kýsa açýklamasý boþ geçilmiþtir";
					} else if (editorkontrol.equals("")) {
						kisacikkontrol = "Ürün editor açýklamasý boþ geçilmiþtir";
					}

					
					editorfiyat.setUrun_fiyat(fiyatkontrol);
					editorfiyat.setUrun_editor(editorkontrol);
					editorfiyat.setUrun_kisacik(kisacikkontrol);
					editfiyat.add(editorfiyat);
					model.addAttribute("editordolu", editfiyat);

				} else {
					editorfiyat.setUrun_editor(rs.getString("urun_editor"));
					editorfiyat.setUrun_fiyat(rs.getString("urun_fiyat"));
					editorfiyat.setUrun_kisacik(rs.getString("urun_kisacik"));
					editfiyat.add(editorfiyat);
					model.addAttribute("editordolu", editfiyat);
				}

			}

		} catch (Exception e) {
			System.err.println("editor getirme hatasi:" + e.getMessage());

		}

		model.addAttribute("ekle", id);
		model.addAttribute("resimeditor", id);
		if (edit.equals(fiyatkontrol) || edit.equalsIgnoreCase(kisacikkontrol)|| edit.equalsIgnoreCase(editorkontrol)) {
			model.addAttribute("editorbos", 0);
		}

		kategori_adi = kategori;
		urun_adi = urun;

		return "admin/urunbilgisiekleme";

	}

	@RequestMapping(value = "/urunbilgileri/{kategori}", method = RequestMethod.GET)
	String urunduzenleme(Model model, @PathVariable String kategori) {
		ArrayList<UrunBilgileriProperty> urprop = new ArrayList<UrunBilgileriProperty>();
		try {
			String query = "select *from urun_bilgileri where urun_kategori='" + kategori + "'";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {

				UrunBilgileriProperty ubp = new UrunBilgileriProperty();
				ubp.setId(rs.getString("id"));
				ubp.setUrun_id(rs.getString("urun_id"));
				ubp.setUrun_resim(rs.getString("urun_resim"));
				ubp.setUrun_klasor(rs.getString("urun_klasor"));
				ubp.setUrun_editor(rs.getString("urun_editor"));
				ubp.setUrun_kategori(rs.getString("urun_kategori"));
				ubp.setUrun_adi(rs.getString("urun_adi"));
				ubp.setUrun_kisacik(rs.getString("urun_kisacik"));
				urprop.add(ubp);

			}
			model.addAttribute("urunbilgileri", urprop);
		} catch (Exception e) {
			System.err.println("urunbilgilerini getirme hatasý:" + e.getMessage());
		}

		return "admin/kategoriduzenle";

	}

	@RequestMapping(value = "/urunsil/{id}", method = RequestMethod.GET)

	String urunsil(@PathVariable String id, Model model) {
		try {
			String query = "delete from urun_bilgileri where urun_id='" + id + "'";
			db.baglan().executeUpdate(query);
		} catch (Exception e) {
			System.err.println("Ürünü Silme hatasý:" + e.getMessage());
		}

		try {
			String query = "delete from urunler where urunid='" + id + "'";
			db.baglan().executeUpdate(query);
		} catch (Exception e) {
			System.err.println("Ürünü Silme hatasý:" + e.getMessage());
		}

		return "admin/yonetim";
	}
	
	@RequestMapping(value = "/urunduzenle/{urunadi}", method = RequestMethod.GET)

	String urunduzenle(@PathVariable String urunadi, Model model,@RequestParam String yeniurun) {
		try {
			String query="update urunler set urunadi='"+yeniurun+"' where urunadi='"+urunadi+"'";
			int deger=db.baglan().executeUpdate(query);
			if(deger>0) {
				model.addAttribute("güncellemebasarili",1 );
			}else {
				model.addAttribute("güncellemebasarisiz",0 );
			}
		} catch (Exception e) {
			System.err.println("Ürünü düzenleme hatasý: (UrunBilgileriController)" + e.getMessage());
		}

		try {
			String query="update urun_bilgileri set urun_adi='"+yeniurun+"' where urun_adi='"+urunadi+"'";
			db.baglan().executeUpdate(query);
		} catch (Exception e) {
			System.err.println("Ürünü düzenleme hatasý: (UrunBilgileriController)" + e.getMessage());
		}

		return "admin/kategoriduzenle";
	}
	
	
	
	
	
	
	
}
