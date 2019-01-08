package agency.com.controller;

import java.security.Principal;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import agency.com.domain.User;
import agency.com.domain.repository.UserRepository;

import org.springframework.security.core.Authentication;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepo;
	
	@RequestMapping("/userinfo")
    public String userInfo(Model model, Principal principal) {
 
        User loginedUser = (User) ((Authentication) principal).getPrincipal();        
        model.addAttribute("user", loginedUser);
        model.addAttribute("Action", true);
        
        return "userinfo";
    }
	
	@RequestMapping(value = "/userinfo", method = RequestMethod.POST)
	public String updateProfile(@ModelAttribute("user") User user, HttpServletRequest request)
	{
		
		userRepo.save(user);
		return "forward:/";
	}
	
	@GetMapping("/users")
	  public String showUserPage(Model model) {
	    Iterable<User> users = userRepo.findAll();
	    model.addAttribute("Users", users);
	    return "users";
	  }		
}
