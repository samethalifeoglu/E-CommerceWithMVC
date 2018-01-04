package com.sirketadi.calisma;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class GirisyapKayitolController {

	int i=1;
	
	@RequestMapping(value = "/yenikayit", method = RequestMethod.GET)
	public String userkayit(Model model) {
		i++;
		
		return "redirect:/yenikayit/"+i;
	}
	
	
	
	@RequestMapping(value = "/yenikayit/{i}", method = RequestMethod.GET)
	public String userkayitt(Model model,@PathVariable String i) {
		
		model.addAttribute("iddegeri", i);
		return "user/userGiris";
	}
	
	
	@RequestMapping(value = "/girisyap", method = RequestMethod.GET)
	public String girisyap(Model model) {
		model.addAttribute("girispanel", 1);
		return "admin/giris";
	}
	
	

	
	@RequestMapping(value = "/kayitkontrol", method = RequestMethod.GET)
	public String kayityap(@RequestParam String isim,@RequestParam String mail,@RequestParam String sifre,@RequestParam String tekrarsifre) {
		
		
		
		
		return "user/userGiris";
	}
	
	
}
