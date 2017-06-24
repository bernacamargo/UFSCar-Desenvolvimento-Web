/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.Actor;
import model.ResultadoRanking;

/**
 *
 * @author lucas
 */
public class BuscaRankingDAO {
    private ConnectionFactory conn; 
    
    public BuscaRankingDAO() throws DAOException, SQLException{        
        this.conn = new ConnectionFactory();
    }
    
    public ResultadoRanking buscar(String genero, String data_inicio, String data_fim) /*throws SQLException*/{
        ResultSet rs = null;
        ResultadoRanking rb = new ResultadoRanking();
        
        String SQL = "SELECT * FROM filmes AS a, directors AS d LIMIT 0,20";
        
        
        try{
            conn.stmt.execute(SQL);
            rs = conn.stmt.getResultSet();  
            
            
            while (rs.next()){
            
                Actor a = new Actor();
                
                a.setName(rs.getString(1));
                a.setSex(rs.getString(2));
                
                rb.adiciona(a);
                   
            }  
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
          
        return rb;
    }
    
}
