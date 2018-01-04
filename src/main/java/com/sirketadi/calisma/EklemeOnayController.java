package com.sirketadi.calisma;

import java.sql.ResultSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import UrunProperty.PhpProperty;
import Utils.DB;

@Controller
public class EklemeOnayController {

	DB db = new DB();

	@RequestMapping(value = "/urunbilgiekle/{id}", method = RequestMethod.GET)
	public String urunbilgileriniekleme(@PathVariable String id , @RequestParam String editor,Model model,@RequestParam String fiyat,@RequestParam String kisacik) {
		PhpProperty php = new PhpProperty();
		System.out.println("id deðeri: " + id);
		
		
		
		try {
			String query = "select *from urun_resimleri where klasor='" + id + "'";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {

				
				php.setUrun_id(rs.getString("urun_id"));
				php.setAdi(rs.getString("adi"));
				php.setKlasor(rs.getString("klasor"));

			}
		} catch (Exception e) {
			System.err.println("Resim bilgileri getirme hatasý:" + e.getMessage());
		}
		
		
		try {
			String que="insert into urun_bilgileri values(null,'"+id+"','"+php.getAdi()+"','"+php.getKlasor()+"','"+editor+"','"+UrunBilgileriController.kategori_adi+"','"+UrunBilgileriController.urun_adi+"','"+kisacik+"','"+fiyat+"','"+kisacik+"') ";
			int deger=db.baglan().executeUpdate(que);
			if(deger>0) {
				System.out.println("Ürün bilgilerini ekleme iþlemi baþarýlý");
				model.addAttribute("eklemebasarili" , 1);
			}else {
				
				
			}
			} catch (Exception e) {
			System.err.println("Ürün bilgilerini ekleme hatasý : (EklemeOnayController) " + e.getMessage());
			model.addAttribute("eklemebasarisiz" , 2);
			
		}
		
		
		
		return "admin/urunbilgisiekleme";
	}

	
	
	
	@RequestMapping(value = "/urunbilgiduzenle/{id}", method = RequestMethod.GET)
	public String urunbilgileriniduzeltme(@RequestParam String kisacik,@PathVariable String id , @RequestParam String editor,Model model,@RequestParam String fiyat) {
		PhpProperty php = new PhpProperty();
		System.out.println("id deðeri: " + id);
		
		String kisaeditor=editor.substring(3, 25)+"...";
		
		try {
			String query = "delete from urun_bilgileri where urun_klasor='" + id + "'";
			db.baglan().executeUpdate(query);
		} catch (Exception e) {
			System.err.println("Ürün bilgileri Silme hatasý:" + e.getMessage());
		}
		
		
		try {
			String query = "select *from urun_resimleri where klasor='" + id + "'";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {

				
				php.setUrun_id(rs.getString("urun_id"));
				php.setAdi(rs.getString("adi"));
				php.setKlasor(rs.getString("klasor"));

			}
		} catch (Exception e) {
			System.err.println("Resim bilgileri getirme hatasý:" + e.getMessage());
		}
		
		
		try {
			String que="insert into urun_bilgileri values(null,'"+id+"','"+php.getAdi()+"','"+php.getKlasor()+"','"+editor+"','"+UrunBilgileriController.kategori_adi+"','"+UrunBilgileriController.urun_adi+"','"+kisaeditor+"','"+fiyat+"','"+kisacik+"') ";
			int deger=db.baglan().executeUpdate(que);
			if(deger>0) {
				System.out.println("Ürün bilgilerini düzenleme iþlemi baþarýlý");
				model.addAttribute("guncelbasarili" , 1);
			}else {
				
				
			}
			} catch (Exception e) {
			System.err.println("Ürün bilgilerini düzenleme hatasý : (EklemeOnayController) ");
			model.addAttribute("guncelbasarisiz" , 2);
		}
		
		
		
		return "admin/urunbilgisiekleme";
	}
	
	
	
	
	
	@RequestMapping(value = "/yonetimegit", method = RequestMethod.GET)
	public String basadon() {

		return "redirect:/yonetim";
	}
}
