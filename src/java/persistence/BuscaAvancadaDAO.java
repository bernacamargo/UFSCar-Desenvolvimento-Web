package persistence;

import java.sql.*;
import model.Director;
import model.Movie;
import model.ResultadoBusca;

/**
 *
 * @author Grupo 05
 */
public class BuscaAvancadaDAO {
    protected ConnectionFactory conn; 
    
    public BuscaAvancadaDAO() {        
        this.conn = new ConnectionFactory();
    }
    
    public ResultadoBusca buscar(String title, String diretor){
        ResultSet rs = null;
        ResultadoBusca rb = new ResultadoBusca();
        
        String SQL = "SELECT f.title, f.mvyear, d.dname, g.genre, l.language "
                    + "FROM filmes AS f "
                    + "INNER JOIN directors_movies AS dm ON f.movieid = dm.movieid "
                    + "INNER JOIN directors AS d ON dm.directorid = d.directorid "
                    + "INNER JOIN genre_movies AS gm ON f.movieid = gm.movieid "
                    + "INNER JOIN genres AS g ON gm.genreid = g.genreid "
                    + "INNER JOIN languages_movies AS lm ON f.movieid = lm.movieid "
                    + "INNER JOIN languages AS l ON lm.languageid = l.languageid "
                    + "WHERE f.title LIKE '%"+title+"%' "
                    + "LIMIT 500";
               
        try{
            conn.stmt.execute(SQL);
            rs = conn.stmt.getResultSet();  
            
            while (rs.next()){
            
                Movie m = new Movie();
                
                m.setTitle(rs.getString("title"));
                m.setYear(rs.getString("mvyear"));
                m.setLanguages(rs.getString("language"));
                m.setGenres(rs.getString("genre"));
                                
                Director d = new Director();
                
                d.setName(rs.getString("dname"));
                
                rb.adiciona(m, d);
            }  
        }
        catch (Exception e) {
            e.printStackTrace();
        }
          
        return rb;
    }
    
}
