package login.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        System.out.println(username);
        if ("admin".equals(username) && "admin".equals(password)){
            //校验通过
            HttpSession session = req.getSession();
            session.setAttribute("username",username);
            resp.sendRedirect(req.getContextPath()+"/success.jsp");
        }else {
            //校验失败
            resp.sendRedirect(req.getContextPath()+"/fail.jsp");
        }
    }
}
