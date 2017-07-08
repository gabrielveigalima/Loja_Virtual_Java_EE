package dao;

import acesso.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.Carrinho;


/**
 *
 * @author Gabriel Lima
 */
public class CarrinhoDao {
    Connection con;
    ResultSet resul;
    //Método que grava os produtos do carrinho no banco
    public boolean cadCarrinho(Carrinho u){
        con = Conexao.Conexao();
        String sql = "insert into carrinho (id_produto, id_usuario) values(?,?)";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, u.getId_produto());
            ps.setString(2, u.getId_usuario());
     
            
            if (ps.executeUpdate()==1){
                return true;
            }else{
                return false;
            }
        }catch(SQLException e){
            System.err.println("Erro ao cadastrar usuário: "+e.toString());
            return false;
        }             
    }
    //Método para ver os dados do carrinho do banco de dados 
    public  ResultSet verCarrinho(String id_usuario){
		try{
                    con = Conexao.Conexao();
                    String sql = "SELECT * FROM carrinho WHERE id_usuario = '"+id_usuario+"'";
                
                    Statement ps = con.createStatement();
                    ResultSet rs = ps.executeQuery(sql);
                   
                    resul = rs;
                            
                    
		}catch (SQLException e){
                        System.err.println("Erro ao ver carrinho: "+e.toString());
                        return null;
		}
                
                return resul;
	}
        //Método que apaga dados do carrinho no banco de dados 
        public boolean apagarItem(String id_carrinho){
        con = Conexao.Conexao();
        String sql = "DELETE FROM carrinho WHERE id_carrinho ='"+id_carrinho+"'";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            if (ps.executeUpdate()==1){
                return true;
            }else{
                return false;
            }
        }catch(SQLException e){
            System.err.println("Erro ao apagar item do carrinho: "+e.toString());
            return false;
        }             
    }
}
