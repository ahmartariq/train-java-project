package db;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.DriverManager;

public class dbcon {
    public static Connection getcon() throws SQLException{
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?serverTimezone=UTC","root","");
            return con;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(dbcon.class.getName()).log(Level.SEVERE, null, ex);
              return null;   
        }   
    }  
}