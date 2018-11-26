package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class RegServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Users u = new Users();
        String username,password,sex,email,introduce,isAccept;
        Date birthday;
        String[] favorites;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try{
            username = request.getParameter("username");
            password = request.getParameter("password");
            sex = request.getParameter("sex");
            email = request.getParameter("email");
            introduce = request.getParameter("introduce");
            birthday = sdf.parse(request.getParameter("birthday"));
            if (request.getParameter("flag") !=null){
                isAccept =request.getParameter("flag");
            }else {
                isAccept = "false";
            }

            //用来获取多个复选按钮的值
            favorites = request.getParameterValues("favorites");
            u.setUsername(username);
            u.setPassword(password);
            u.setSex(sex);
            u.setEmail(email);
            u.setFavorites(favorites);
            u.setIntroduce(introduce);
            if (isAccept.equals("on")){
                u.setFlag(true);
            }else {
                u.setFlag(false);
            }
            u.setBirthday(birthday);

            //把注册成功的用户对象保存在session中
            request.getSession().setAttribute("regUser",u);
            //跳转到注册成功页面
            request.getRequestDispatcher("../userinfo.jsp").forward(request,response);
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }
}
