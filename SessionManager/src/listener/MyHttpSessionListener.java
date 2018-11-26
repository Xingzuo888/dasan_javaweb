package listener;

import util.SessionUtil;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.ArrayList;

@WebListener
public class MyHttpSessionListener implements HttpSessionListener {
    private int userNumber = 0;
    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        userNumber++;
        httpSessionEvent.getSession().setAttribute("userNumber",userNumber);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        userNumber--;
        httpSessionEvent.getSession().setAttribute("userNumber",userNumber);

        ArrayList<User> userList = null;//在线用户list
        userList = (ArrayList<User>) httpSessionEvent.getSession().getServletContext().getAttribute("userList");
        if (SessionUtil.getUserBySessionId(userList,httpSessionEvent.getSession().getId())!=null){
            userList.remove(SessionUtil.getUserBySessionId(userList,httpSessionEvent.getSession().getId()));
        }

    }
}
