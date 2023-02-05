/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.utils.JDBCConnectionManager;
import com.exavalu.models.Role;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Avijit Chattopadhyay
 */
public class RoleService {
    
    public static ArrayList getAllRoles() throws SQLException {
        ArrayList roleList = new ArrayList();
        Connection con = JDBCConnectionManager.getConnection();
        
        String sql = "Select * from roles";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            
            System.out.println(preparedStatement);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                Role role = new Role();
                
                role.setRoleId(rs.getInt("roleId"));
                role.setRoleName(rs.getString("roleName"));
                
                roleList.add(role);
                
            }
            System.out.println("size: "+sql);
        return roleList;

        } 
    }
    
  