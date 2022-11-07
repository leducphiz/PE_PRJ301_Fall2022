/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import dal.*;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author leducphi
 */
public class assignDAO extends DBContext {

    public Paper getPaperByID(int ID) {
        Paper paper = null;
        try {
            String sql = "SELECT * FROM dbo.Paper WHERE pid = ?";
            //Step2: create obj PrepareStatement
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, ID);
            //Step 3: thuc thti truy van
            ResultSet rs = ps.executeQuery();
            //Step 4: xu ly kq tra  ve
            while (rs.next()) {
                paper = new Paper(rs.getInt("pid"), rs.getString("title"), Date.valueOf(rs.getString("published_date")), rs.getBoolean("open_access"));
                return paper;
            }
        } catch (SQLException e) {
        }

        return null;
    }

    public ArrayList<Paper_Author> getPaperAuthorByID(int id) {
        ArrayList<Paper_Author> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM dbo.Paper_Author WHERE pid = ?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int pid = rs.getInt("pid");
                int auid = rs.getInt("auid");
                int corresponding_author = rs.getInt("corresponding_author");
                list.add(new Paper_Author(pid, auid, corresponding_author));

            }
        } catch (SQLException e) {
        }
        return list;
    }

    public static void main(String[] args) {
        System.out.println(new assignDAO().getPaperAuthorByID(1));
    }
}
