package springpet.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import springpet.model.User;
import springpet.service.PetClinicService;
import springpet.util.Message;

@Controller
public class HomeController {
	
	@Autowired
	private PetClinicService service;
	
	@RequestMapping("/welcome")
	public String welcome(){
		return "welcome";
	}
	
	@RequestMapping("/")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value="/login/check",method = RequestMethod.POST)
	public String checkLogin(String account, String password, HttpSession session) {	
		
		User user = service.verifyUser(account, password);
		if (user!=null) {
			session.setAttribute("user", user);
			return "redirect:/welcome.html";
		}else
			return "redirect:/";
	}
	
	@RequestMapping(value="/user/validate",method = RequestMethod.POST)
	@ResponseBody
	public Message jsonUser(@RequestBody User user) {		
		
		Message jms = new Message();
		if (user==null) {
			jms.setCode(1);
			jms.setDescription("�˺�δ�");
			return jms;
		}
		String account = user.getAccount();
		String password = user.getPassword();
		if (account == null || "".equals(account)) {
			jms.setCode(1);
			jms.setDescription("�˺�δ�");
			return jms;
		}
		if (account.length()<3) {
			jms.setCode(2);
			jms.setDescription("�˺�����3λ��");
			return jms;
		}
		if (password == null || "".equals(password)) {
			jms.setCode(3);
			jms.setDescription("����δ�");
			return jms;
		}
		if (password.length()<6) {
			jms.setCode(4);
			jms.setDescription("��������6λ��");
			return jms;
		}
		if (service.findUserByAccount(account)==null) {
			jms.setCode(5);
			jms.setDescription("�˺Ų����ڣ�");
			return jms;
		}	
		jms.setCode(0);
		jms.setDescription("У��ͨ����");
					
		return jms;
	}
}
