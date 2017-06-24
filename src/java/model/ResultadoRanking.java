/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author lucas
 */
public class ResultadoRanking {
    private ArrayList<Actor> actor;
    
    public ResultadoRanking(){
        this.actor = new ArrayList();
    }
    
    public String returnMovie(int i){      
        return  "<td>" + this.actor.get(i).getName() + "</td>" +
                "<td>" + this.actor.get(i).getSex() + "</td>";
    }
    
    public void adiciona(Actor a){
        this.actor.add(a);
    }
    
    public int size(){
        return this.actor.size();
    }
}
