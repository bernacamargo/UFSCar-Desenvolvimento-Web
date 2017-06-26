/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;
import java.sql.*;
import model.Director;
import model.ResultadoDiretores;
/**
 *
 * @author bernardo.camargo
 */
public class BuscaDiretoresDAO {
    protected ConnectionFactory conn;
    
    public BuscaDiretoresDAO(){
        this.conn = new ConnectionFactory();
    }
    
    public ResultadoDiretores buscar(){
        ResultSet rs = null;
        ResultadoDiretores rd = new ResultadoDiretores();
        
        String SQL = "SELECT * FROM directors";
               
        try{
            conn.stmt.execute(SQL);
            rs = conn.stmt.getResultSet();  
            
            while (rs.next()){
                                            
                Director d = new Director();
                
                d.setName(rs.getString("dname"));
                
                //System.out.println(d.getName());
                
                rd.adiciona(d);
            }  
        }
        catch (Exception e) {
            e.printStackTrace();
        }
          
        return rd;
    }
}
