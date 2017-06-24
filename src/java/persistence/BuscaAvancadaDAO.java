package persistence;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Director;
import model.Movie;
import model.ResultadoBusca;

/**
 *
 * @author Grupo 05
 */
public class BuscaAvancadaDAO {
    private Connection connection; 
    private Statement stmt;
    
    public BuscaAvancadaDAO() throws DAOException, SQLException{
        //this.connection = ConnectionFactory.getConnection();
        
        //Conexao com o banco
         try {
            //Class.forName("org.postgresql.Driver").newInstance();
            //String conn="jdbc:postgresql://localhost:5432/banco_projeto";
           // String user="", password="";
            this.connection = ConnectionFactory.getConnection();
            stmt = connection.createStatement();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public ResultadoBusca buscar(String name, String diretor) /*throws SQLException*/{
        ResultSet rs = null;
        ResultadoBusca rb = new ResultadoBusca();
        
        String SQL = "SELECT * FROM filmes AS a, directors AS d LIMIT 0,20";
        
        
        try{
            stmt.execute(SQL);
            rs = stmt.getResultSet();  
            
            
            int i = 0;
            while (rs.next()){
            
                Movie m = new Movie();
                
                m.setName(rs.getString(1));
                m.setYear(rs.getString(2));
                //m.setLanguages(rs.getString(3));
                //m.setGenres(rs.getString(4));
                
                Director d = new Director();
                
                d.setName(rs.getString(3));
                
                rb.adiciona(m, d);
                
                i++;   
            }  
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
          
        return rb;
    }
    
}
