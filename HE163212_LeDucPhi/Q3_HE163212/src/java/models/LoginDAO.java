package models;


import dal.DBContext;
import dal.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author leducphi
 */
public class LoginDAO extends DBContext {

    public User getAccount(String user, String pass) {
        User us = null;
        try {
            String sql = "SELECT * FROM dbo.[User] WHERE username = ? AND password = ?";
            //Step2: create obj PrepareStatement
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            //Step 3: thuc thti truy van
            ResultSet rs = ps.executeQuery();
            //Step 4: xu ly kq tra  ve
            while (rs.next()) {

                String username = rs.getString("username");
                String password = rs.getString("password");
                us = new User(username, password);
                
            }
        } catch (SQLException e) {
        }

        return us;
    }

    public static void main(String[] args) {
        System.out.println(new LoginDAO().getAccount("mra", "mra"));
    }
}
