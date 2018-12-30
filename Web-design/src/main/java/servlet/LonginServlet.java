package servlet;

        import dao.AdminDao;
        import entity.Admin;

        import javax.servlet.ServletException;
        import javax.servlet.annotation.WebServlet;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import java.io.IOException;
        import java.sql.SQLException;

@WebServlet("/login")
public class LonginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("inputEmail");
        String password = request.getParameter("inputPassword");
        System.out.println(email);
        System.out.println(password);
        AdminDao adminDao = new AdminDao();
       Admin admin = null;
        try {
            admin = adminDao.login(email, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (admin !=null) {
            //登录成功
//            response.sendRedirect("/index.jsp");
            request.getRequestDispatcher("/index").forward(request, response);
        }else{
            request.setAttribute("loginInfo","用户名或密码错误 ！");
            request.getRequestDispatcher("/longin.jsp").forward(request, response);
        }

    }
}