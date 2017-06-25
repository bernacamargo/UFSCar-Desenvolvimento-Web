/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author lucas
 */
public class Actor {
    private String name;
    private String sex;
    private int qtd;

    public int getQtd() {
        return this.qtd;
    }

    public String getName() {
        return this.name;
    }

    public String getSex() {
        return sex;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
       
}
