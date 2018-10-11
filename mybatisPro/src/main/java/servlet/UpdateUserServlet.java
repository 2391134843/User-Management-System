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

@WebServlet("/updateUserServlet")
public class UpdateUserServlet extends HttpServlet {
    private UserDao userDao = new UserDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.接受参数
        String id = request.getParameter("id");
        System.out.println("id:"+id);
//        String username = request.getParameter("username");  修改账号
//        String userpass = request.getParameter("userpass");  修改密码
//        String nickname = new String(request.getParameter("nickname").getBytes("ISO-8859-1"),"UTF-8");
        String nickname = new String(request.getParameter("nickname").getBytes("ISO-8859-1"),"UTF-8");
        System.out.println("用户昵称为："+nickname);

        String age = request.getParameter("age");
        System.out.println("age:"+age);
        String gender = request.getParameter("gender");
        System.out.println("gender:"+gender);
        String email = request.getParameter("email");
        System.out.println("email:"+email);
        String phone = request.getParameter("phone");
        System.out.println("phone:"+phone);
        String remark = new String(request.getParameter("remark").getBytes("ISO-8859-1"),"UTF-8");
//        String remark = request.getParameter("remark");
        System.out.println("remark:"+remark);
        //2.封装到类
        Users user = new Users(Integer.parseInt(id), nickname, Integer.parseInt(age), gender, phone,email, new Date(),remark);
        //3.将结果修改到数据库中
        user = userDao.updateUser(user);
        //将文件传输
        response.sendRedirect("/detail?id=" + user.getId());
    }
}
