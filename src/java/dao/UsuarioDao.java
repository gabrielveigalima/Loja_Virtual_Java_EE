package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import acesso.Conexao;
import java.sql.Statement;
import model.Usuario;
 

public class UsuarioDao {
	private Connection con;
	//Este método é para verificar o login 
	public  Usuario validaLogin(String emailDigitado,String pwsDigitado){
		con = Conexao.Conexao();
		
		String sql = "SELECT * FROM usuarios WHERE email ='"+emailDigitado+"' and pws ='"+pwsDigitado+"'";
                Usuario u = null;
		try{
			Statement ps = con.createStatement();
			ResultSet rs = ps.executeQuery(sql);
			
			if(rs.next()){
			u = new Usuario();
                            u.setId(rs.getString("id_usuario"));
                            u.setNome(rs.getString("nome"));
			}
		}catch (SQLException e){
			e.printStackTrace();
                        System.err.println("Erro ao logar: "+e.toString());
		}
		return u;
	}
        //Este método seleciona o usuario pelo Id
        public  ResultSet perfil(String id){
		con = Conexao.Conexao();
		
		String sql = "SELECT * FROM usuarios WHERE id_usuario ='"+id+"'";
                Usuario u = null;
                ResultSet resul = null;
		try{
			Statement ps = con.createStatement();
			ResultSet rs = ps.executeQuery(sql);
			
			if(rs.next()){
			u = new Usuario();
                            u.setId(rs.getString("id_usuario"));
                            u.setNome(rs.getString("nome"));
                            u.setEmail(rs.getString("email"));
                            u.setSenha(rs.getString("pws"));
                            resul = rs;
			}
                        return resul;
		}catch (SQLException e){
			e.printStackTrace();
                        System.err.println("Erro ao logar: "+e.toString());
                        
		}
                return resul;
		
	}
        
        
}
