package demo.servlet;

import demo.server.LoginServer;
import demo.vo.UserInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("user");
        String password = req.getParameter("pwd");
        boolean flag = false;
        List<String> info = new ArrayList<>();
        List<UserInfo> data = new ArrayList<>();
        if (username == null || username.equals("")) {
            info.add("error: username is null !");
        }
        if (password == null || password.equals("")) {
            info.add("error: password is null !");
        }
        if (info.size() > 0) {
        }else {
            try {
                flag = LoginServer.loginCheck(username,password);
                if (!flag){
                    info.add("error: your username or password is error !");
                }else {
                    data = LoginServer.query();
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        if (!flag) {
            req.setAttribute("info",info);
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }else {
            info.add("欢迎您 "+username);
            req.getSession().setAttribute("info",info);
            req.getSession().setAttribute("data",data);
            req.getRequestDispatcher("main.jsp").forward(req,resp);
        }
    }
}
