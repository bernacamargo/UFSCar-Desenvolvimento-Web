/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.Actor;
import model.ResultadoRanking;

/**
 *
 * @author lucas
 */
public class BuscaRankingDAO {
    private ConnectionFactory conn; 
    
    public BuscaRankingDAO(){        
        this.conn = new ConnectionFactory();
    }
    
    public ResultadoRanking buscar(String genero, String data_inicio, String data_fim, String pag){
        ResultSet rs = null;
        ResultadoRanking rr = new ResultadoRanking();
        int limit = 0;
        
        if(pag != null){
            limit = Integer.parseInt(pag)-1;
            limit = limit * 10;
        }

        //Primeira query 7 segundos mais lenta
        /*String SQL = "SELECT COUNT(a.actorid) AS qtd, a.actorname "
                + "FROM actor AS a "
                + "INNER JOIN filme_actor AS fa ON a.actorid = fa.actorid "
                + "INNER JOIN filmes AS f ON f.movieid = fa.movieid "
                + "INNER JOIN genre_movies AS gm ON gm.movieid = f.movieid "
                + "INNER JOIN genres AS g ON g.genreid = gm.genreid ";
                SQL = SQL + "WHERE g.genre = '" + genero + "' ";
                if(data_inicio.length() > 0){
                    SQL = SQL + "AND f.mvyear > '" + data_inicio + "' ";
                }
                if(data_fim.length() > 0){
                    SQL = SQL + "AND f.mvyear < '" + data_fim + "' ";
                }
                SQL = SQL + "GROUP BY a.actorname ORDER BY qtd DESC LIMIT 10";*/
        
        //Segunda query 7 segundos mais rapida
        String SQL = "SELECT COUNT(gm.movieid) AS qtd, a.actorname "
                + "FROM actor AS a "
                + "INNER JOIN filme_actor AS fa ON fa.actorid = a.actorid "
                + "INNER JOIN ( "
                    + "SELECT gm.movieid "
                    + "FROM genre_movies AS gm, genres AS g "
                    + "WHERE g.genreid = gm.genreid "
                    + "AND g.genre LIKE '"+genero+"' "
                + ") AS gm ON fa.movieid = gm.movieid ";
                if(data_inicio.length() > 0){
                    SQL = SQL + "AND ff.mvyear > '" + data_inicio + "' ";
                }
                if(data_fim.length() > 0){
                    SQL = SQL + "AND ff.mvyear < '" + data_fim + "' ";
                }
                SQL = SQL + "GROUP BY a.actorname ORDER BY qtd DESC, a.actorname "
                        + "LIMIT 10 OFFSET "+limit;

                
                System.out.println(SQL);
                
        try{
            conn.stmt.execute(SQL);
            rs = conn.stmt.getResultSet();  
            
            while (rs.next()){
            
                Actor a = new Actor();
                
                a.setQtd(rs.getInt(1));
                a.setName(rs.getString(2));
                
                rr.adiciona(a);
                   
            }  
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
          
        return rr;
    }
    
}
