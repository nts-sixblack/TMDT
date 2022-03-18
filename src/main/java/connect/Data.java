package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class Data {
//    public static Connection getConnection() throws Exception {
//        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        String url = "jdbc:sqlserver://SIXBLACK:1433;databaseName=TMDT";
//        String user = "sa";
//        String password = "123456789";
//        Connection connection = DriverManager.getConnection(url, user, password);
//        return connection;
//    }

    public static String name = "tmdt";

    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/tmdt";
        String user = "root";
        String password = "123456789";
        Connection connection = DriverManager.getConnection(url, user, password);
        return connection;
    }

//    public static String name = "heroku_2a7c63b7d0b3a14";
//
//    public static Connection getConnection() throws Exception {
//        Class.forName("com.mysql.cj.jdbc.Driver");
//        String url = "jdbc:mysql://us-cdbr-east-05.cleardb.net:3306/heroku_3618060e318d7cb";
//        String user = "bd2568bcc77370";
//        String password = "fa6c7236";
//        Connection connection = DriverManager.getConnection(url, user, password);
//        return connection;
//    }



}
