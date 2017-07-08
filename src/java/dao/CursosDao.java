package dao;

import acesso.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Cursos;


/**
 *
 * @author Gabriel
 */
public class CursosDao {
    Connection con;
    ResultSet resul;
    //Método que seleciona todos os cursos
    public ResultSet pegaProdutos(){
        con  = Conexao.Conexao();
        String sql = "Select * from cursos";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet cur = ps.executeQuery();
           
            return cur;
        }catch(SQLException e){
            return null;
        }
    }
    //Método que seleciona o curso de acordo com o parametro passado 
    public Cursos verCurso(String id){
        Cursos c = null;
        con = Conexao.Conexao();
        String sql ="Select * from cursos where id_curso ='"+id+"'";
        try{
            
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                c = new Cursos();
                c.setId(rs.getString("id_curso"));
                c.setNome(rs.getString("nome"));
                c.setImg(rs.getString("img"));
                c.setPreco(rs.getString("valor"));
                c.setDescr(rs.getString("descri"));
            }            
        }catch(SQLException e){
            return null;
        }
        return c;
    }
    //Método que seleciona os curso para exibir no carrinho
    public ResultSet verCursoCarrinho(String id){
        
        Cursos c = null;
        con = Conexao.Conexao();
        String sql ="Select * from cursos where id_curso ='"+id+"'";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if(rs.first()){
                resul = rs;
                return resul;
            }
            return resul;         
        }catch(SQLException e){
            return null;
        }
       
       
    }
}
