package model;

import java.util.ArrayList;

/**
 *
 * @author Grupo 05
 */
public class ResultadoBusca {
    private ArrayList<Movie> movie;
    
    public ResultadoBusca(){
        this.movie = new ArrayList();
    }
   
    public void adiciona(Movie m){
        this.movie.add(m);
    }
    
    public String returnMovie(int i){      
        return  "<td>" + this.movie.get(i).getTitle() + "</td>" +
                "<td>" + this.movie.get(i).getYear() + "</td>" +
                "<td></td>" +
                "<td></td>" +
                "<td></td>" +
                "<td></td>";
    }
        
    public int size(){
        return this.movie.size();
    }
}
