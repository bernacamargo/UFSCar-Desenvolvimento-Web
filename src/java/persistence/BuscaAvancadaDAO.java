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
        
        String SQL = "SELECT * "
                    + "FROM filmes LIMIT 50";
               
        try{
            conn.stmt.execute(SQL);
            rs = conn.stmt.getResultSet();  
            
            while (rs.next()){
            
                Movie m = new Movie();
                
                m.setTitle(rs.getString("title"));
                m.setYear(rs.getString("mvyear"));
                //m.setLanguages(rs.getString(3));
                //m.setGenres(rs.getString(4));
                
                System.out.println("Titulo:"+m.getTitle());
                
                Director d = new Director();
                
                d.setName(rs.getString(3));
                
                rb.adiciona(m);
            }  
        }
        catch (Exception e) {
            e.printStackTrace();
        }
          
        return rb;
    }
    
}
