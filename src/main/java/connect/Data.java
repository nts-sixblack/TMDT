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

//    public static String name = "tmdt";
//
//    public static Connection getConnection() throws Exception {
//        Class.forName("com.mysql.cj.jdbc.Driver");
//        String url = "jdbc:mysql://localhost:3306/tmdt";
//        String user = "root";
//        String password = "123456789";
//        Connection connection = DriverManager.getConnection(url, user, password);
//        return connection;
//    }

    public static String name = "heroku_e13b39f7545a664";

    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://us-cdbr-east-05.cleardb.net:3306/heroku_e13b39f7545a664";
        String user = "b78a52ca5575d0";
        String password = "c2db74c0";
        Connection connection = DriverManager.getConnection(url, user, password);
        return connection;
    }



}
