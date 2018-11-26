package demo.dbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String URL = "jdbc:sqlserver://localhost:1433;DatabaseName=UserInfo";
    private static final String USER = "sa";
    private static final String PASSWORD = "123456";
    private Connection conn = null;

    public DatabaseConnection() throws Exception {
        Class.forName(DRIVER);
        this.conn = DriverManager.getConnection(URL,USER,PASSWORD);
    }

    public Connection getConn() {
        return conn;
    }

    public void close() throws SQLException {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            throw e;
        }
    }
}
