package com.sirketadi.calisma;

import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import UrunProperty.UrunBilgileriProperty;
import Utils.DB;

@Controller
public class UrundetayController {

	DB db = new DB();

	@RequestMapping(value = "/urundetay/{id}")
	String urundetayi(@PathVariable String id, Model model) {
		ArrayList<UrunBilgileriProperty> urundetay = new ArrayList<UrunBilgileriProperty>();
		String urundetayi="";
		try {
			String query = "select *from urun_bilgileri where urun_id='" + id + "'";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {
				UrunBilgileriProperty urunbilgileri = new UrunBilgileriProperty();
				urunbilgileri.setUrun_id(rs.getString("urun_id"));
				urunbilgileri.setUrun_kisacik(rs.getString("urun_kisacik"));
				urunbilgileri.setUrun_resim(rs.getString("urun_resim"));
				urundetayi=rs.getString("urun_kisacik").substring(0, 25);
				urunbilgileri.setUrun_detay(urundetayi);
				urunbilgileri.setUrun_fiyat(rs.getString("urun_fiyat"));
				urunbilgileri.setUrun_kategori(rs.getString("urun_kategori"));
				urunbilgileri.setUrun_editor(rs.getString("urun_editor"));
				urunbilgileri.setUrun_adi(rs.getString("urun_adi"));
				
				urundetay.add(urunbilgileri);
			}
			System.err.println("çalýþtým");
			model.addAttribute("urundet", urundetay);
		} catch (Exception e) {
			System.err.println("Ürün bilgilerini getirme hatasý: (UrundetayController)" + e.getMessage());
		}
		
		ArrayList<String> resim=new ArrayList<String>();
		try {
			String query = "select *from urun_resimleri where urun_id='" + id + "'";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {
				resim.add(rs.getString("adi"));
			}
			
			model.addAttribute("resimm", resim);
			model.addAttribute("gününfirsati", resim);
			
			
			
		} catch (Exception e) {
			System.err.println("Resim getirme hatasý: (UrundetayController)" + e.getMessage());
		}
		
		
		return "user/urunlersayfasi";

	}

}
