package connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConsultaSQL {
    private Connection con;
    private ResultSet rs;
    private ResultSetMetaData mtd;
    private String[] Colunas;
    private String consulta,error;
    public ConsultaSQL(Connection c,String sql){
    this.con = c;
    this.consulta = sql;
    
        try {
            Statement st = con.createStatement();
            rs = st.executeQuery(consulta);
            mtd = rs.getMetaData();
            error = null;
            
        } catch (SQLException ex) {
            error = ex.getMessage();
        }
    }

    public String getError(){
        return this.error;
    }
    public ResultSet getResultado(){
        return this.rs;
        
    }
    public String [] getNomesColunas(){
    
        try {
            int numColunas = mtd.getColumnCount();
            this.Colunas = new String[numColunas];
            for(int a=0; a<numColunas; a++){
                Colunas [a] = mtd.getColumnLabel(a); //a posição do resulset começa em 1
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConsultaSQL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Colunas;
    }
}
