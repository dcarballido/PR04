/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author aaron
 */
public class Usuarios {
    private int id_usuario;
    private String correo_usuario;
    private String password_usuario;

    public Usuarios() {
    }

    public Usuarios(int id_usuario, String correo_usuario, String password_usuario) {
        this.id_usuario = id_usuario;
        this.correo_usuario = correo_usuario;
        this.password_usuario = password_usuario;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public String getCorreo_usuario() {
        return correo_usuario;
    }

    public String getPassword_usuario() {
        return password_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public void setCorreo_usuario(String correo_usuario) {
        this.correo_usuario = correo_usuario;
    }

    public void setPassword_usuario(String password_usuario) {
        this.password_usuario = password_usuario;
    }
    
    
}
