package Utils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;


public class DB {
    
    final private String driver = "com.mysql.jdbc.Driver";
    final private String url = "jdbc:mysql://localhost/";
    
    private String dbName = "kategoriler";
    private String dbUser = "root";
    private String dbPass = "";
    final private String encode = "?useUnicode=true&characterEncoding=utf-8";
    
    
    private Connection conn = null;
    private Statement st = null;
    private PreparedStatement preSt = null;

    public DB() {
    }

    public DB(String dbName, String dbUser, String dbPass) {
        this.dbName = dbName;
        this.dbUser = dbUser;
        this.dbPass = dbPass;
    }
    
    public Statement baglan() {
        try {
            if (conn != null) {
                kapat();
            }
            Class.forName(driver);
            conn = DriverManager.getConnection(url+dbName+encode, dbUser, dbPass);
            st = conn.createStatement();
            System.out.println("Baðlantý Baþarýlý");
        } catch (Exception e) {
            System.err.println("Baglanti Hatasi : " + e);
        }
        return st;
    }
    
    
    
    public PreparedStatement preBaglan(String query) {
        try {
            if (conn != null) {
                kapat();
            }
            Class.forName(driver);
            conn = DriverManager.getConnection(url+dbName+encode, dbUser, dbPass);
            preSt = conn.prepareStatement(query);
        } catch (Exception e) {
            System.err.println("PreparedStatement hatasi : " + e);
        }
        return preSt;
    }
    
    
    
    
    public void kapat() {
        try {
            if (preSt != null) {
                preSt.close();
                System.out.println("PraperedStatement Kapandi");
                preSt = null;
            }
            if(st != null) {
                st.close();
                System.out.println("Statement Kapandi");
                st = null;
            }
            if (conn != null ) {
                conn.close();
                System.out.println("Connection Kapandi");
                conn = null;
            }
        } catch (SQLException e) {
            System.err.println("Kapatma Hatasi : " + e);
        }
    }
    

    
    
    
}
