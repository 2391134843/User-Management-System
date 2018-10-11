package servlet;

import dao.UserDao;
import entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deluser")
public class UserDelServlet extends HttpServlet {
    UserDao userDao = new UserDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.接收参数
        String id = request.getParameter("id");
        System.out.println("id:"+id);
        String type = request.getParameter("type");
        System.out.println("type:"+type);
        //2.执行删除或锁定操作
        if ("lock".equals(type)) {
            //执行锁定操作
            // 执行锁定操作：update操作
            Users user = new Users();
            user.setId(Integer.parseInt(id));
            user.setUserStatus(1);
            userDao.updateUser(user);
//            System.out.println("锁定锁定");
        } else if ("del".equals(type)){
            //执行删除操作
//            System.out.println("删除删除1111");
            userDao.deleteUser(Integer.parseInt(id));
//            System.out.println("删除删除22222");
        } else if ("unLock".equals(type)) {
            System.out.println("解锁");
            Users user = new Users();
            user.setId(Integer.parseInt(id));
            user.setUserStatus(0);
            userDao.updateUser(user);

        }
        //3.跳转回到首页地址
        response.sendRedirect("/index");

    }
}
