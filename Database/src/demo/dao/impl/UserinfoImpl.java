package demo.dao.impl;

import demo.dao.IUserinfoDao;
import demo.vo.UserinfoBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserinfoImpl implements IUserinfoDao {

    private Connection conn = null;

    public UserinfoImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public List<UserinfoBean> findAll() throws Exception {
        List<UserinfoBean> list = new ArrayList<>();
        String sql = "SELECT * FROM userinfo";
        Statement sm = null;
        ResultSet rs = null;
        try{
            sm = conn.createStatement();
            rs = sm.executeQuery(sql);
            while (rs.next()){
                UserinfoBean userinfoBean = new UserinfoBean();
                userinfoBean.setId(rs.getInt("id"));
                userinfoBean.setUsername(rs.getString("username"));
                userinfoBean.setPassword(rs.getString("password"));
                userinfoBean.setSex(rs.getString("sex").charAt(0));
                userinfoBean.setAge(rs.getInt("age"));
                list.add(userinfoBean);
            }
        }catch (Exception e){
            throw e;
        }finally {
            try {
                if (rs != null)
                    rs.close();
                if (sm != null)
                    sm.close();
            }catch (Exception e){
                throw e;
            }
        }
        return list;
    }

    @Override
    public List<UserinfoBean> findByKey(String key) throws Exception {
        List<UserinfoBean> list = new ArrayList<>();
        String sql = "SELECT * FROM userinfo WHERE username LIKE ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                UserinfoBean userinfoBean = new UserinfoBean();
                userinfoBean.setId(rs.getInt("id"));
                userinfoBean.setUsername(rs.getString("username"));
                userinfoBean.setPassword(rs.getString("password"));
                userinfoBean.setSex(rs.getString("sex").charAt(0));
                userinfoBean.setAge(rs.getInt("age"));
                list.add(userinfoBean);
            }
        }catch (Exception e){
            throw e;
        }finally {
            try{
                if (rs != null)
                    rs.close();
                if(ps!=null)
                    ps.close();
            }catch (Exception e){
                throw e;
            }
        }
        return list;
    }

    @Override
    public int add(UserinfoBean bean) throws Exception {
        int result = -1;
        String sql = "INSERT INTO userinfo(username,password,sex,age) VALUES(?,?,?,?)";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,bean.getUsername());
            ps.setString(2,bean.getPassword());
            ps.setString(3, String.valueOf(bean.getSex()));
            ps.setInt(4,bean.getAge());
            result = ps.executeUpdate();
        }catch (Exception e){
            throw e;
        }finally {
            try {
                if (rs!=null)
                    rs.close();
                if (ps!=null)
                    ps.close();
            }catch (Exception e){
                throw  e;
            }
        }
        return result;
    }
}
