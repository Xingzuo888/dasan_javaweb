package listener;

import util.SessionUtil;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@WebListener
public class MyServletRequestListener implements ServletRequestListener {
    private ArrayList<User> userList;//在线用户list
    @Override
    public void requestDestroyed(ServletRequestEvent servletRequestEvent) {

    }

    @Override
    public void requestInitialized(ServletRequestEvent servletRequestEvent) {
        userList = (ArrayList<User>) servletRequestEvent.getServletContext().getAttribute("userList");
        if (userList==null){
            userList = new ArrayList<User>();
        }
        HttpServletRequest request = (HttpServletRequest) servletRequestEvent.getServletRequest();
        String sessionIdString = request.getSession().getId();
        if (SessionUtil.getUserBySessionId(userList,sessionIdString) == null){
            User user = new User();
            user.setSessionIdString(sessionIdString);
            user.setFirstTimeString(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
            user.setIpString(request.getRemoteAddr());
            userList.add(user);
        }
        servletRequestEvent.getServletContext().setAttribute("userList",userList);
    }
}
