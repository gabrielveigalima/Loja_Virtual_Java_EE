package model;

/**
 *
 * @author Gabriel Lima
 */
public class Carrinho {
    public String id_produto;
    public String id_usuario;
  
    public void setId_produto(String id_produto) {
        this.id_produto = id_produto;
    }
    
    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
       
    }
    
   
   
     public String getId_produto() {
        return id_produto;
    }
     
    public String getId_usuario() {
        return id_usuario;
    }

    
}

