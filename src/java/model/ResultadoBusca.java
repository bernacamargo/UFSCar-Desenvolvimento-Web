package model;

import java.util.ArrayList;

/**
 *
 * @author Grupo 05
 */
public class ResultadoBusca {
    private ArrayList<Director> director;
    private ArrayList<Movie> movie;
    
    public ResultadoBusca(){
        this.director = new ArrayList();
        this.movie = new ArrayList();
    }
   
      
    public void adiciona(Movie m, Director d){
        this.director.add(d);
        this.movie.add(m);
    }
    
    public String returnMovie(int i){      
        return  "<td>" + this.movie.get(i).getName() + "</td>" +
                "<td>" + this.movie.get(i).getYear() + "</td>" +
                "<td>" + this.movie.get(i).getLanguages() + "</td>" +
                "<td>" + this.movie.get(i).getGenres() + "</td>";
    }
    
    public String returnDirector(int i){
        return  "<td>" + this.director.get(i).getName() + "</td>";
    }
    
    public int size(){
        return this.movie.size();
    }
}
