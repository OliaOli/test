package usermanager.controller;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import usermanager.model.User;
import usermanager.service.UserService;

@Controller
public class UserController {
    private UserService userService;

    @RequestMapping(value = "users", method = RequestMethod.GET)
    public String listUsers(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "users";
    }

    @RequestMapping(value = "/user/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("user") User user){
        if (user.getId() == 0) {
            userService.addUser(user);
        } else {
            userService.updateUser(user);
        }
        return "redirect:/users";
    }

    @RequestMapping("/remove/{id}")
    public String removeBook(@PathVariable("id") int id) {
        userService.deleteUser(id);
        return "redirect:/books";
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, Model model){
        model.addAttribute("user", userService.getUser(id));
        model.addAttribute("listUsers", userService.getAllUsers());
        return "users";
    }

    @RequestMapping("userdata/{id}")
    public String bookData(@PathVariable("id") int id, Model model){
        model.addAttribute("user", userService.getUser(id));
        return "userdata";
    }

}
