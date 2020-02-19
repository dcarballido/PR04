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
public class Producte {
    private int prod_id;
    private String prod_nom;
    private String prod_foto;
    private String prod_descripcio;
    private int prod_desconte;
    private int prod_preu;

    public Producte() {
    }

    public Producte(int prod_id, String prod_nom, String prod_foto, String prod_descripcio, int prod_desconte, int prod_preu) {
        this.prod_id = prod_id;
        this.prod_nom = prod_nom;
        this.prod_foto = prod_foto;
        this.prod_descripcio = prod_descripcio;
        this.prod_desconte = prod_desconte;
        this.prod_preu = prod_preu;
    }

    public int getProd_id() {
        return prod_id;
    }

    public String getProd_nom() {
        return prod_nom;
    }

    public String getProd_foto() {
        return prod_foto;
    }

    public String getProd_descripcio() {
        return prod_descripcio;
    }

    public int getProd_desconte() {
        return prod_desconte;
    }

    public void setProd_id(int prod_id) {
        this.prod_id = prod_id;
    }

    public void setProd_nom(String prod_nom) {
        this.prod_nom = prod_nom;
    }

    public void setProd_foto(String prod_foto) {
        this.prod_foto = prod_foto;
    }

    public void setProd_descripcio(String prod_descripcio) {
        this.prod_descripcio = prod_descripcio;
    }

    public void setProd_desconte(int prod_desconte) {
        this.prod_desconte = prod_desconte;
    }

    public int getProd_preu() {
        return prod_preu;
    }

    public void setProd_preu(int prod_preu) {
        this.prod_preu = prod_preu;
    }
    
    
    
    
    
}
