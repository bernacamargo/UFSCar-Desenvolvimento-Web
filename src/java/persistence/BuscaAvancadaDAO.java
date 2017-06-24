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
    
    public ResultadoBusca buscar(String name, String diretor){
        ResultSet rs = null;
        ResultadoBusca rb = new ResultadoBusca();
        
        String SQL = "SELECT * "
                    + "FROM filmes LIMIT 50";
       
        System.out.println("TITULO:" + SQL);
        
        try{
            conn.stmt.execute(SQL);
            rs = conn.stmt.getResultSet();  
            
            while (rs.next()){
                
                /*
                1 - id
                2 - Titulo
                3 - Ano
                */
            
                Movie m = new Movie();
                
                m.setTitle(rs.getString(2));
                m.setYear(rs.getString(3));
                
                //m.setLanguages(rs.getString(3));
                //m.setGenres(rs.getString(4));
                
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
