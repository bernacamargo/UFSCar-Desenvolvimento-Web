package model;

import java.util.ArrayList;

/**
 *
 * @author bernardo.camargo
 */
public class ResultadoDiretores {
    private ArrayList<Director> director;
    
    public ResultadoDiretores (){
        this.director = new ArrayList();
    }
    
    public void adiciona(Director d){
        this.director.add(d);
    }
    
    public String returnDiretor(int i){      
        return this.director.get(i).getName();
    }
    
    public int size(){
        return this.director.size();
    }

}
