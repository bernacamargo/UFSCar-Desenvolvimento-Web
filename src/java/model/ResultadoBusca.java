package model;

import java.util.ArrayList;

/**
 *
 * @author Grupo 05
 */
public class ResultadoBusca {
    private ArrayList<Movie> movie;
    private ArrayList<Director> director;
    
    public ResultadoBusca(){
        this.movie = new ArrayList();
        this.director = new ArrayList();
    }
   
    public void adiciona(Movie m, Director d){
        this.movie.add(m);
        this.director.add(d);
    }
    
    public String returnMovie(int i){      
        return  "<td>" + this.movie.get(i).getTitle() + "</td>" +
                "<td>" + this.movie.get(i).getYear() + "</td>" +
                "<td>" + this.director.get(i).getName() +"</td>" +
                "<td>" + this.movie.get(i).getGenres() + "</td>" +
                "<td>" + this.movie.get(i).getLanguages() + "</td>";
    }
        
    public int size(){
        return this.movie.size();
    }
}
