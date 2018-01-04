package com.sirketadi.calisma;

import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import UrunProperty.KategoriProperty;
import Utils.DB;

@Controller
public class DuzenleController {
	DB db = new DB();

	@RequestMapping(value = "/kategoriduzenle", method = RequestMethod.GET)
	public String kategoriduzenleme(Model model) {
		ArrayList<KategoriProperty> kateg = new ArrayList<KategoriProperty>();
		try {
			String query = "select *from kategori";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {
				KategoriProperty kp = new KategoriProperty();
				kp.setKategadi(rs.getString("kategadi"));
				kp.setKategid(rs.getString("kategid"));
				kateg.add(kp);
			}
			model.addAttribute("kategorilerigetir", kateg);
		} catch (Exception e) {
			System.err.println("kategorileri düzenlemek için getirme hatasý:" + e.getMessage());
		}

		return "admin/yonetim";

	}

	@RequestMapping(value = "/duzenle/{kategori}", method = RequestMethod.GET)
	public String duzenle(@PathVariable String kategori, Model model) {

		model.addAttribute("model", kategori);

		return "admin/kategoriduzenle";
	}

	@RequestMapping(value = "/duzenlendi/{kategorii}", method = RequestMethod.GET)
	public String duzenlendi(@PathVariable String kategorii, Model model, @RequestParam String duzenlenenkategori) {

		try {
			String query = "update kategori set kategadi='" + duzenlenenkategori + "' where kategadi='" + kategorii
					+ "'";
			int deger = db.baglan().executeUpdate(query);
			if (deger > 0) {
				model.addAttribute("güncellemebasarili", kategorii);
			} else {
				model.addAttribute("güncellemebasarisiz", kategorii);
			}

		} catch (Exception e) {

		}

		try {
			String query = "update urunler set urunkategori='" + duzenlenenkategori + "' where urunkategori='"
					+ kategorii + "'";
			db.baglan().executeUpdate(query);

		} catch (Exception e) {

		}

		try {
			String query = "update urun_bilgileri set urun_kategori='" + duzenlenenkategori + "' where urun_kategori='"
					+ kategorii + "'";
			db.baglan().executeUpdate(query);

		} catch (Exception e) {

		}

		return "admin/kategoriduzenle";
	}

	@RequestMapping(value = "/kategorisil/{kategori}", method = RequestMethod.GET)

	String kategorisil(@PathVariable String kategori, Model model) {

		try {
			String query = "delete from kategori where kategadi='" + kategori + "'";
			int deger = db.baglan().executeUpdate(query);
			if (deger > 0) {
				model.addAttribute("silmebasarili", 1);
			} else {
				model.addAttribute("silmebasarisiz", 0);
			}
		} catch (Exception e) {
			System.err.println("Kategori Silme hatasý:" + e.getMessage());
		}

		try {
			String query = "delete from urun_bilgileri where urun_kategori='" + kategori + "'";
			db.baglan().executeUpdate(query);
		} catch (Exception e) {
			System.err.println("Kategori Silme hatasý:" + e.getMessage());
		}

		return "admin/kategoriduzenle";
	}

}
