package com.sirketadi.calisma;

import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import UrunProperty.KategoriProperty;
import UrunProperty.UrunProperty;
import Utils.DB;

@Controller
public class YonetimController {
	DB db = new DB();
	ArrayList<KategoriProperty> ls = new ArrayList<KategoriProperty>();

	@RequestMapping(value = "/kategorieklendi", method = RequestMethod.GET)
	public String kategoriekle(@RequestParam String kategoriadi, Model model) {
		try {
			String quer = "insert into kategori values(null,'" + kategoriadi + "')";
			int deger = db.baglan().executeUpdate(quer);
			if (deger > 0) {
				System.out.println("kategori ekleme baþarýlý.");
			}
		} catch (Exception e) {
			System.err.println("kategori ekleme hatasý: (Yönetim Contoller)" + e.getMessage());
		}
		return "admin/yonetim";
	}

	@RequestMapping(value = "/yonetim", method = RequestMethod.GET)
	public String akis(HttpServletRequest req, Model model) {

		String adminbilgi = null;
		try {
			String query = "select *from admin_panel";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {

				adminbilgi = rs.getString("admin_bilgi");
			}

			model.addAttribute("adminbilgisi", adminbilgi);
			System.err.println("admin bilgisi : " + adminbilgi);

		} catch (Exception e) {
			System.err.println("Admin bilgilerini getirme hatasý: " + e.getMessage());
		}

		return denetim(req, "yonetim");
	}

	public static String denetim(HttpServletRequest req, String sayfa) {

		// çerez denetimi yapýlýyor
		if (req.getCookies() != null) {
			Cookie[] cDizi = req.getCookies();
			for (int i = 0; i < cDizi.length; i++) {
				if (cDizi[i].getName().equals("admincerez")) {
					// çerez var !
					String kuldata = cDizi[i].getValue();
					req.getSession().setAttribute("adminid", kuldata);
					break;
				}
			}
		}

		boolean durum = req.getSession().getAttribute("adminid") != null;
		if (durum == false) {
			return "redirect:/giris";
		}
		return "admin" + "/" + sayfa;
	}

	public static String url;

	@RequestMapping(value = "/urunekleme/{kategori}", method = RequestMethod.GET)
	public String uzantial(Model model, @PathVariable String kategori) {
		ArrayList<UrunProperty> urunler = new ArrayList<UrunProperty>();

		url = kategori;

		try {
			String query = "select *from urunler where urunkategori='" + kategori + "'";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {
				UrunProperty up = new UrunProperty();
				up.setUrunid(rs.getString("urunid"));
				up.setUrunadi(rs.getString("urunadi"));
				up.setUrunkategori(rs.getString("urunkategori"));
				urunler.add(up);
			}
			model.addAttribute("urunler", urunler);

		} catch (Exception e) {
			System.err.println("ürünleri getirme hatasý : (Yönetim Contoller) " + e.getMessage());
		}

		return "admin/urunekle";
	}

	@RequestMapping(value = "/uruneklendi", method = RequestMethod.GET)
	public String urunekle(Model model, @RequestParam String urunadi) {

		try {
			String quer = "insert into urunler values(null,'" + urunadi + "','" + url + "')";
			int a = db.baglan().executeUpdate(quer);
			if (a > 0) {
				System.out.println("ürün ekleme baþarýlý");
			}
		} catch (Exception e) {
			System.err.println("ürün ekleme baþarýsýz : (Yönetim Contoller)" + e.getMessage());
		}

		return "admin/yonetim";
	}

}