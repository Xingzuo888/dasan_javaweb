package demo.server;

import demo.dbc.DatabaseConnection;
import demo.vo.UserInfo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LoginServer {
    public static boolean loginCheck(String name,String pwd) throws Exception {
        boolean flag = false;
        String sql = "select * from userinfo where username='"+name+"'"+"and password='"+pwd+"'";
        Connection conn = null;
        Statement sm = null;
        ResultSet rs = null;
        try {
            conn = new DatabaseConnection().getConn();
            sm = conn.createStatement();
            rs = sm.executeQuery(sql);
            if (rs != null && rs.next()) {
                flag = true;
            }
        } catch (Exception e) {
            throw e;
        }finally {
            if (rs != null) {
                rs.close();
            }
            if (sm != null) {
                sm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return flag;
    }

    public static List<UserInfo> query() throws Exception{
        List<UserInfo> list = new ArrayList<>();
        String sql = "select * from userinfo";
        Connection conn = null;
        Statement sm = null;
        ResultSet rs = null;
        try {
            conn = new DatabaseConnection().getConn();
            sm = conn.createStatement();
            rs = sm.executeQuery(sql);
            while (rs.next()) {
                UserInfo u = new UserInfo();
                u.setId(rs.getInt("id"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setSex(rs.getString("sex").charAt(0));
                u.setAge(rs.getInt("age"));
                list.add(u);
            }
        } catch (Exception e) {
            throw e;
        }finally {
            if (rs != null) {
                rs.close();
            }
            if (sm != null) {
                sm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }
}
