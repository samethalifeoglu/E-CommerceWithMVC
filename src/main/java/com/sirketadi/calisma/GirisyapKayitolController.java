package com.sirketadi.calisma;

import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import UrunProperty.MusteriBilgilerProperty;
import Utils.DB;

@Controller

public class GirisyapKayitolController {
	public static ArrayList<MusteriBilgilerProperty> musteribilgisi = new ArrayList<MusteriBilgilerProperty>();
	ArrayList<MusteriBilgilerProperty> musteriarray = new ArrayList<MusteriBilgilerProperty>();

	DB db = new DB();

	int i = 1;

	@RequestMapping(value = "/yenikayit", method = RequestMethod.GET)
	public String userkayit(Model model) {
		i++;

		return "redirect:/yenikayit/" + i;
	}

	@RequestMapping(value = "/yenikayit/{i}", method = RequestMethod.GET)
	public String userkayitt(Model model, @PathVariable String i) {

		model.addAttribute("kayitiddegeri", i);
		return "user/userGiris";
	}

	@RequestMapping(value = "/girisyap", method = RequestMethod.GET)
	public String girisyap(Model model) {
		model.addAttribute("girispanel", 1);
		return "user/userGiris";
	}

	@RequestMapping(value = "/kayitkontrol/{id}", method = RequestMethod.POST)
	public String kayityap(@PathVariable String id, @RequestParam String username, @RequestParam String usermail,
			@RequestParam String userpass, @RequestParam String userpasstekrar, Model model) {
		if (username.equals("") || userpass.equals("") || userpasstekrar.equals("")) {
			model.addAttribute("kayitiddegeri", i);
			model.addAttribute("bilgilerbosgecilemez", 0);
			return "user/userGiris";
			
		}else if(!userpass.equals(userpasstekrar)) {
			model.addAttribute("kayitiddegeri", i);
			model.addAttribute("sifreleruyumsuz", 0);
			return "user/userGiris";
		}
		
		
		
		
		
		
		else {

			try {
				String userekle = "insert into user_bilgileri values(null,'" + username + "','" + usermail + "','"
						+ userpass + "')";
				int deger = db.baglan().executeUpdate(userekle);
				if (deger > 0) {
					model.addAttribute("yenikayiteklemebasarili", 1);
					return "user/userGiris";
				}
			} catch (Exception e) {
				System.err.println("Kullanýcý ekleme hatasý:" + e.getMessage());
			}

		}
		model.addAttribute("yenikayiteklemebasarisiz", 0);
		return "user/userGiris";

	}

	@RequestMapping(value = "/musteriGiris", method = RequestMethod.POST)
	public String musterigiris(@RequestParam String musterimail, @RequestParam String musterisifre, Model model) {

		try {
			String que = "select *from user_bilgileri";
			ResultSet rs = db.baglan().executeQuery(que);
			while (rs.next()) {
				MusteriBilgilerProperty musbil = new MusteriBilgilerProperty();
				musbil.setUser_mail(rs.getString("user_mail"));
				musbil.setId(rs.getString("id"));
				musbil.setUser_adi(rs.getString("user_adi"));
				musbil.setUser_sifre(rs.getString("user_sifre"));
				musteriarray.add(musbil);
			}
		} catch (Exception e) {
			System.err.println("Müsteri bilgilerini getirme hatasý :" + e.getMessage());
		}

		for (MusteriBilgilerProperty item : musteriarray) {
			if (item.getUser_mail().equals(musterimail) && item.getUser_sifre().equals(musterisifre)) {
				MusteriBilgilerProperty mb = new MusteriBilgilerProperty();
				mb.setUser_adi(item.getUser_adi());
				musteribilgisi.add(mb);
				return "redirect:/";
			}
		}
		if (musterimail.equals("") && musterisifre.equals("")) {
			model.addAttribute("girispanel", 0);
			model.addAttribute("bossifre", 0);
		} else {
			model.addAttribute("girispanel", 0);
			model.addAttribute("sifremailyanlis", 0);
		}
		return "user/userGiris";

	}

	@RequestMapping(value = "/cikisyap", method = RequestMethod.GET)
	public String cikisyap(Model model) {

		musteribilgisi.clear();
		return "redirect:/";
	}

}
