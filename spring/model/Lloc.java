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
public class Lloc {
    public int lloc_id;
    public int num_lloc;
    public int num_pasadis;
    public int num_lleixa;

    public Lloc() {
    }

    public Lloc(int lloc_id, int num_lloc, int num_pasadis, int num_lleixa) {
        this.lloc_id = lloc_id;
        this.num_lloc = num_lloc;
        this.num_pasadis = num_pasadis;
        this.num_lleixa = num_lleixa;
    }

    public int getLloc_id() {
        return lloc_id;
    }

    public int getNum_lloc() {
        return num_lloc;
    }

    public int getNum_pasadis() {
        return num_pasadis;
    }

    public int getNum_lleixa() {
        return num_lleixa;
    }

    public void setLloc_id(int lloc_id) {
        this.lloc_id = lloc_id;
    }

    public void setNum_lloc(int num_lloc) {
        this.num_lloc = num_lloc;
    }

    public void setNum_pasadis(int num_pasadis) {
        this.num_pasadis = num_pasadis;
    }

    public void setNum_lleixa(int num_lleixa) {
        this.num_lleixa = num_lleixa;
    }
    
    
}
