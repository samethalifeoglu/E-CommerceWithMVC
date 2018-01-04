package com.sirketadi.calisma;

import java.sql.ResultSet;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Utils.DB;

@Controller
public class GirisController {
	String adminMail = null;
	String adminSifre = null;

	DB db = new DB();

	@RequestMapping(value = "/giris", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("girispanel", 0);
		return "admin/giris";
	}

	// giriþ yap
	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public String giris(@RequestParam String mail, @RequestParam String sifre, Model model, HttpServletRequest req,
			HttpServletResponse res) {
		
		
		
		if(sifre.equals("")) {
			model.addAttribute("girispanel", 0);
			model.addAttribute("bossifre", 0);
			return "admin/giris";
			
		}
		
		try {
			String query = "select *from admin_panel";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {
				adminMail = rs.getString("admin_mail");
				adminSifre = rs.getString("admin_sifre");
			}
		} catch (Exception e) {
			System.err.println("Admin bilgilerini getirme hatasý: " + e.getMessage());
		}

		if (mail.equals(adminMail) && sifre.equals(adminSifre)) {
			
			
			// oturum aç
			req.getSession().setAttribute("adminid", 10);

			// beni hatýrla durumu kontrolü
			boolean hDurum = req.getParameter("beni_hatirla") != null;
			if (hDurum) {
				Cookie cerez = new Cookie("admincerez", "10");
				cerez.setMaxAge(60);
				res.addCookie(cerez);
			}

			return "redirect:/yonetim";
		} else {
			// kullanýcý adý yada þifre hatalý!
			model.addAttribute("girispanel", 0);
			model.addAttribute("sifremailyanlis", 0);
			return "admin/giris";
		}

		
	}

	@RequestMapping(value = "/sifreunut", method = RequestMethod.GET)
	public String sifreunut(Locale locale, Model model) {
		
		try {
			String query = "select *from admin_panel";
			ResultSet rs = db.baglan().executeQuery(query);
			while (rs.next()) {
				adminSifre = rs.getString("admin_sifre");
				if(adminSifre.equals("")) {
					adminSifre="Admin Þifresi Boþ Geçilmiþtir";
				}
			}
			model.addAttribute("sifreguncelle", adminSifre);
		} catch (Exception e) {
			System.err.println("Admin bilgilerini getirme hatasý: " + e.getMessage());
		}

		return "admin/giris";
	}

	@RequestMapping(value = "/sifreguncelle/{eskisifre}", method = RequestMethod.GET)
	public String sifreguncelle(Locale locale, Model model ,@RequestParam String yenisifre,@RequestParam String yenisifretekrar,@PathVariable String eskisifre) {
		
		if(!yenisifre.equals(yenisifretekrar)) {
			model.addAttribute("sifreguncelle", adminSifre);
			model.addAttribute("uyumsuzsifre", 0);
			return "admin/giris";
			
		}
		
		try {
			String query="update admin_panel set admin_sifre='"+yenisifre+"' where admin_sifre='"+eskisifre+"'";
			int guncel=db.baglan().executeUpdate(query);
			if(guncel>0) {
				model.addAttribute("sifreguncellemebasarili", 1);
			}else {
				model.addAttribute("sifreguncellemebasarisiz", 0);

			}
		} catch (Exception e) {
			System.err.println("Admin bilgilerini getirme hatasý: " + e.getMessage());
		}
		
	
		return "admin/giris";
	}

}
