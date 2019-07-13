package com.org.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.org.entity.User;
import com.org.service.UserService;
@Controller
public class UserController {

	@Resource
	private UserService userService;
	/**
	 * 用户登录
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("login")
	public String login(@RequestParam("id")int id, @RequestParam("password")String password, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception{
		//System.out.print("/////");
		User user = new User();
		user.setId(id);
		user.setPassword(password);
		User userresult = userService.loginByUserNameAndPassword(user);
		System.out.print("type");
		if(userresult!=null){
		    if(userresult.getStituo()==-1)
            {
                model.addAttribute("msg",2);
                return "error";
            }else{
                model.addAttribute("currentUser", userresult.getUsername());
                model.addAttribute("id",userresult.getId());
				//model.addAttribute("key","0");
                userresult.setStituo(-1);
                userService.updateByPrimaryKeySelective(userresult);
                return "index";
            }


		}else {
			model.addAttribute("msg",1);
			return "error";
		}


	}
	//页面切换
	@RequestMapping("index")
	public String toIndex(@RequestParam("id")int id,Model model) {
		model.addAttribute("id",id);
		return "index";
	}
	//页面切换
	@RequestMapping("update_into")
	public String update_into(@RequestParam("id")int id,Model model) {
		model.addAttribute("id",id);
		return "update_into";
	}
	//页面切换
	@RequestMapping("Out_of_stock")
	public String toOut_of_stock(@RequestParam("id")int id,Model model) {
		model.addAttribute("id",id);
		return "Out_of_stock";
	}
	@RequestMapping("Inventory_check")
	public String toInventory_check(@RequestParam("id")int id,Model model) {
		model.addAttribute("id",id);
		return "Inventory_check";
	}
	@RequestMapping("Sale")
	public String toSale(@RequestParam("id")int id,Model model) {
		model.addAttribute("id",id);
		return "Sale";
	}
	@RequestMapping("financial_statements")
	public String tofinancial_statements(@RequestParam("id")int id,Model model) {
		model.addAttribute("id",id);
		return "financial_statements";
	}
	@RequestMapping(value = "logout",method = RequestMethod.GET)
	public String logout(@RequestParam("id")int id,Model model) {
	    User user=userService.selectByPrimaryKey(id);
	    user.setStituo(1);
	    userService.updateByPrimaryKeySelective(user);
		return "success";
	}
}
