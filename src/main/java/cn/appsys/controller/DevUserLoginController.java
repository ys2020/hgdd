package cn.appsys.controller;

import cn.appsys.pojo.DevUser;
import cn.appsys.service.DevUserService;
import cn.appsys.tools.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class DevUserLoginController {

    @Autowired
    private DevUserService devUserService;

    // 去登陆页面
    @RequestMapping(value="/login.html",method = RequestMethod.GET)
    public String toLogin(){
        return "login";
    }

    @RequestMapping(value="/dologin",method = RequestMethod.POST)
    @ResponseBody
    public Object doLogin(@RequestBody  DevUser user, HttpSession session){
        DevUser devUser = devUserService.login(user);
        if (devUser == null) {
            return ResponseResult.fail(10000,"用户名或密码错误");
        }
        session.setAttribute("loginUser",devUser);
        return ResponseResult.success("/index.html");
    }
    @RequestMapping(value="/logout",method = RequestMethod.GET)
    public String doLogout(HttpSession session){
        session.invalidate();
        return "redirect:/login.html";
    }



}
