package servlet;

import dao.UserDao;
import entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/addusers")
public class UsersAddServlet extends HttpServlet {
    private UserDao userDao = new UserDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取要添加用户的数据
        String username = request.getParameter("username");
//        System.out.println(username);
        String userpass = request.getParameter("userpass");
//        System.out.println(userpass);
//        String nickname = request.getParameter("nickname");
        String nickname = new String(request.getParameter("nickname").getBytes("ISO-8859-1"),"UTF-8");
        System.out.println("用户昵称为："+nickname);

        String age = request.getParameter("age");
//        System.out.println("age"+age);
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        //2.根据用户的数据来构建一个实体对象
//        Users users = new Users(username, userpass, nickname, Integer.parseInt(age), gender, email, phone,new Date(),new Date(),new Date(),0);
        Users user = new Users(username, userpass, nickname, Integer.parseInt(age), gender, phone,email, new Date(), new Date(), new Date(), 0);
        //3.将用户对象添加到数据库中
        user = userDao.addUser(user);
        //4.查看刚刚新增的用户信息
        System.out.println("dddd"+user.getId());
        response.sendRedirect("/detail?id="+user.getId());
    }
}
