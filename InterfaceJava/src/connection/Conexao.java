package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class Conexao {
	public static Connection getConexao()throws SQLException{
	Connection conn = null;
	try {
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/loja","root","");
	JOptionPane.showMessageDialog(null,"Conexão com o banco de dados efetuado com sucesso!");
	}
	catch(SQLException e){
        JOptionPane.showMessageDialog(null,"Erro ao conectar-se com o banco de dados (Para mais informações verifique o erro no terminal)");
	throw new SQLException(e.getMessage());
	}
	return conn;
       }

    public static Statement createStatement() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   }

