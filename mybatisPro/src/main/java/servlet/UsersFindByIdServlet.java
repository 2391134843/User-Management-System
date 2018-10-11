package servlet;

import dao.UserDao;
import entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/detail")
public class UsersFindByIdServlet extends HttpServlet {
    private UserDao userDao = new UserDao();
    private Logger logger = Logger.getLogger(String.valueOf(UsersFindByIdServlet.class));
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        logger.info("获取到的查询id为："+id);
        Users users = userDao.findById(Integer.parseInt(id));
        logger.info("查询完成，查询到的数据为："+users);
        request.setAttribute("user",users);

        request.getRequestDispatcher("detail.jsp").forward(request,response);
    }
}
