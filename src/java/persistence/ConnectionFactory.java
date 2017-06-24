package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author Grupo 5
 */
public class ConnectionFactory {
    
    protected Connection conn;
    protected Statement stmt;
  
    public ConnectionFactory() {
        try {
                Class.forName("org.postgresql.Driver").newInstance();
                String connection="jdbc:postgresql://localhost:5432/BancoWeb";
                String user="postgres", password="123456789";

                conn = DriverManager.getConnection(connection, user, password);
                stmt = conn.createStatement();

        } catch (Exception exception) {
            System.out.println("Erro ao acessar o banco de dados");
        }


    }
}