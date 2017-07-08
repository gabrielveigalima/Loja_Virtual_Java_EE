package acesso;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	 public static Connection Conexao(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/underline","root","");
			System.out.println("Conectado!");
			return con;
			
		}
		catch (SQLException | ClassNotFoundException e){
			e.printStackTrace();
			return null;
		}
				
		
	}
	 
}
		
