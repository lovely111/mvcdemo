package demo.controller;

import demo.dao.UserDao;
import demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by xlj
 * 2016/7/12.
 */
@Controller
@RequestMapping("user")
public class UserController extends BaseController {
    @Autowired
    public UserDao userDao;

    @RequestMapping("create")
    public String create(User user) {
        userDao.create(user);
        return "redirect:/index.jsp";
    }


//    转发 与 重定向
//            都可以实现页面的跳转
//    转发不改变地址，重定向改变地址


    @RequestMapping("login")

    public String login(User  user){
        List<User>  users= userDao.query(user);
        if (users.size()>0){
            session.setAttribute("user", users.get(0));
            return "redirect:/book/queryAll";
        }
        else {
            //    转发可以保存 request 范围内的属性，重定向不能
            request.setAttribute("message","账户名或密码错误");
            return "index";
        }

    }
    @RequestMapping("logout")
    public   String logout(){
        session.invalidate();
        return "redirect:/index.jsp";
    }

}
