/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author aaron
 */
public class UsuariosDAO {
    Conexion con = new Conexion();
    Connection cn=con.conectar();
    String sql="";
    
    
    
    public void getListaUsuarios(ArrayList<Usuarios> milista){
        sql="SELECT * FROM tbl_usuarios";
        
        try {
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery(sql);
            
            while(rs.next()){
                Usuarios an=new Usuarios();
                an.setId_usuario(rs.getInt("id_usuario"));
                an.setCorreo_usuario(rs.getString("correo_usuario"));
                an.setPassword_usuario(rs.getString("password_usuario"));    

                milista.add(an);
                
            }
            
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
    
    public void insertarUsuario(Usuarios usuarios){

        sql="INSERT INTO `tbl_usuarios`(`correo_usuario`, `password_usuario`) VALUES (?,?)";
        
        try {
            PreparedStatement pst=cn.prepareStatement(sql);
            pst.setString(1, usuarios.getCorreo_usuario());
            pst.setString(2, usuarios.getPassword_usuario());
            
            pst.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }
    
    
     public void getListaProductos(ArrayList<Producte> milista_producte){
        sql="SELECT * FROM tbl_producte";
        
        try {
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery(sql);
            
            while(rs.next()){
                Producte an=new Producte();
                an.setProd_id(rs.getInt("prod_id"));
                an.setProd_nom(rs.getString("prod_nom"));
                an.setProd_desconte(rs.getInt("prod_desconte"));    
                an.setProd_descripcio(rs.getString("prod_descripcio"));
                an.setProd_foto(rs.getString("prod_foto"));
                an.setProd_preu(rs.getInt("prod_preu"));

                milista_producte.add(an);
                
            }
            
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
}
