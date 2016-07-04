/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tuhnpk00528;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author Windows 10 Version 2
 */
public class clsConnectDB {
//    String connectionString = "jdbc:sqlserver://DESKTOP-DKO4I4R:1433;" 
//            + "databaseName=SimpleProductDB;user=sa;password=123456;";
    String connectionString = "jdbc:sqlserver://62b27b3d-7454-40d0-92ee-a6340012636c.sqlserver.sequelizer.com;" 
            + "databaseName=db62b27b3d745440d092eea6340012636c;user=qfqjwvsfbzlovtrn;password=LaFfhgX7ZHr7FcDauBm2eTJ7A24xSD4FGc5Jwr2FwPCtGUNbyAnxGWzZxGMokyov;";
    Connection conn;
    public clsConnectDB(){
       
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(connectionString);
            
            if(conn != null){
                System.out.println("Kết nối CSDL SQL Server thành công!");
            }
            
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.toString());
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
    }
    
    //Thực thi câu lệnh SELECT
    public ResultSet ExcuteQueryGetTable(String cauTruyVanSQL){
        try {
            Statement stmt = conn.createStatement();           
            ResultSet rs = stmt.executeQuery(cauTruyVanSQL);
            return rs;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
            
        return null;
    }
    //Thực thi INSERT, DELETE, UPDATE
    public void ExcuteQueryUpdateDB(String cauTruyVanSQL){
       
        try {
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(cauTruyVanSQL);
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
    }
    
}
