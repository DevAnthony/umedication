package com.bcgc.umedication.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bcgc.umedication.service.UserService;

/**
 * Handles requests for the application user page.
 */
@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    private UserService userService;
    
   @Autowired
   public void setUserService(UserService us){
       this.userService = us;
   }
    /**
	 * Affiche une liste de tous les Users
	 * @param model -> Objet qui sert à créer une vue
	 * @return -> la page des Users
	 */
    @RequestMapping(value = "/admin/Users", method = RequestMethod.GET)
    public String listUsers(Model model) {
    	logger.debug("liste des utilisateurs demandee");
        model.addAttribute("users", userService.listUsers());
        return "admin";
    }
}
