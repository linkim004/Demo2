/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tuhnpk00528;

/**
 *
 * @author Windows 10 Version 2
 */
public class BaiTapBuoi1 {

    /**
     * @param args the command line arguments
     */
    public static clsConnectDB connection = new clsConnectDB(); // Tạo kết nối csdl để sài cho nhiều form
    public static void main(String[] args) {
                
        frmDangNhap frmReg = new frmDangNhap();
        frmReg.show();
        
    }
    
}
