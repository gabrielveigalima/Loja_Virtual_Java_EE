package model;

/**
 *
 * @author Gabriel Lima
 */
public class Cursos {
    public String id;
    public String nome;
    public String descr;
    public String preco;
    public String img;
    
    public void setId(String id) {
        this.id = id;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
       
    }
    
    public void setImg(String img) {
        this.img = img;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public void setPreco(String preco) {
        this.preco = preco;
    }
   
     public String getId() {
        return id;
    }
     
    public String getNome() {
        return nome;
    }

    public String getDescr() {
        return descr;
    }

    public String getPreco() {
        return preco;
    }
    public String getImg() {
        return img;
    }
}
