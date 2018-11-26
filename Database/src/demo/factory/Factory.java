package demo.factory;

import demo.dao.IUserinfoDao;
import demo.dao.impl.UserinfoImpl;

import java.sql.Connection;

public class Factory {
    public static IUserinfoDao getIUserinfoDaoInstance(Connection conn){
        return new UserinfoImpl(conn);
    }
}
