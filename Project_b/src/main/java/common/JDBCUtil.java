package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {
   public static final String driver = "oracle.jdbc.driver.OracleDriver";
   public static final String url = "jdbc:oracle:thin:@localhost:1521:XE";
   public static final String user = "himedia";
   public static final String pw = "0000";

   public static Connection connect() {
      Connection conn = null;
      try {
         Class.forName(driver);
         conn = DriverManager.getConnection(url, user, pw);
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return conn;
   }

   public static void disconnect(PreparedStatement pstmt, Connection conn) {
      try {
         pstmt.close();
         conn.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }

   public static void disconnect(PreparedStatement pstmt, Connection conn, ResultSet rs) {
      try {
         rs.close();
         pstmt.close();
         conn.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }

}