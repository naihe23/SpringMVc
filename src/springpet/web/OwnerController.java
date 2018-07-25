package springpet.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springpet.model.Owner;
import springpet.service.PetClinicService;

@Controller
public class OwnerController {
	
	@Autowired
	private PetClinicService service;
	
	@RequestMapping(value="/owners/find",method = RequestMethod.GET)
	public String initFindForm(Model model) {		
		//model.addAttribute("owner", new Owner());
        return "owners/owner_list";
	}
	
	@RequestMapping(value="/owners/find",method = RequestMethod.POST)
	public String findOwners(String name, Model model) {		
		model.addAttribute("owners", service.findOwners(name));
        return "owners/owner_list";
	}
	
	@RequestMapping(value="/owners/new",method = RequestMethod.GET)
	public String initCreateAndEditForm(String name, Model model) {
		model.addAttribute("owner", new Owner());
        return "owners/owner_edit";
	}
	
	@RequestMapping(value="/owners/new",method = RequestMethod.POST)
	public String createOwner(Owner owner, Model model) {
		service.saveOwner(owner);
		model.addAttribute("owner", owner);
        return "owners/owner_edit";
	}
}
