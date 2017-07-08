package dao;

import acesso.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Usuario;

public class ClienteDao {
    
    private Connection con;
    //Método que cadastra os usuários no banco de dados
    public boolean cadastroCli(Usuario u){
        con = Conexao.Conexao();
        String sql = "insert into usuarios (nome, email, pws) values(?,?,?)";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, u.getNome());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getSenha());
            
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
}
