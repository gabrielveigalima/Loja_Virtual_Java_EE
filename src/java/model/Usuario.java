package model;

/**
 *
 * @author Gabriel Lima
 */
public class Usuario {
    public String id;
    public String nome;
    public String email;
    public String senha;

    
    public void setId(String id) {
        this.id = id;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
   
    public String getId() {
        return id;
    }
    
    public String getNome() {
        return nome;
    }

    public String getEmail() {
        return email;
    }

    public String getSenha() {
        return senha;
    }
}
