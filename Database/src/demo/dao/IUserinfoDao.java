package demo.dao;

import demo.vo.UserinfoBean;

import java.util.List;

public interface IUserinfoDao {
    public List<UserinfoBean> findAll() throws Exception;
    public List<UserinfoBean> findByKey(String key) throws Exception;
    public int add(UserinfoBean bean) throws Exception;
}
