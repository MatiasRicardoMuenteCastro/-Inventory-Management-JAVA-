package connection;
import interfacejava.TelaLogin;
import interfacejava.PainelOpcoes;
import java.sql.SQLException;


public class NewMain {

    public static void main(String[] args) throws SQLException {
        
        TelaLogin tela = new TelaLogin();
        PainelOpcoes painelopcoes = new PainelOpcoes();
  
        String Usuario = tela.getUsuario();
        String Senha = tela.getSenha();
        
        tela.setVisible(true);
        
     while(Usuario != "root@admin" && Senha != "admin"){
        Usuario = tela.getUsuario();
        Senha = tela.getSenha();
        if(Usuario.equals("root@admin")&& Senha.equals("admin")){
        painelopcoes.setVisible(true);
        break;
        
      }
    }
  }
 }



    

