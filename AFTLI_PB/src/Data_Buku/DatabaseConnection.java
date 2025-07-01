/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Data_Buku;

import Anggota.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author TEGAR
 */
public class DatabaseConnection {
    public static Connection connect() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3307/aftli_pb";
            String username = "root";
            String password = "";
            
            conn = DriverManager.getConnection(url, username, password);
            System.out.println("Koneksi berhasil");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver MySQL tidak ditemukan: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Koneksi gagal: " + e.getMessage());
        }
        return conn;
    }
}