package br.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.model.user.Usuario;
import br.model.dao.UsuarioDAO;
import br.model.util.ConectaBDPostgres;

/*
 create table rf_user(
id serial,
nome varchar(20) not null,
senha varchar(20) not null,
email varchar(50) not null,
primary key(nome)
)


insert into rf_user(nome,senha,email) values ('diovane','123','diovane.soligo92@gmail.com')

select *from rf_user

drop table rf_user
 */

public class UsuarioDAO {
	/*teste de conectividade
public static void main(String args[]){
		
		Usuario u = new Usuario();
		u.setNome("diovane");
		u.setSenha("123");
		
		try {
			
			System.out.println("autenticado? "
					+ ""+new UsuarioDAO().autenticado(u));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
*/	
	public boolean autenticado(Usuario u) throws SQLException{
		
		boolean autenticado = false;
		
		System.out.println("... dentro do autenticado UsuarioDAO");	
		
		Connection c = ConectaBDPostgres.getConexao();//Faz conexão com banco thewiki

		String sql = "select * from rf_user where "
				+ "nome =? and senha =?";
		
		PreparedStatement stmtPre = c.prepareStatement(sql);
		stmtPre.setString(1, u.getNome());
		stmtPre.setString(2, u.getSenha());			
		//ResultSet rs = stmt.executeQuery(sql);
		ResultSet rs = stmtPre.executeQuery();
		
		
		
		while(rs.next()){
			String nome = rs.getString("nome");
			String senha = rs.getString("senha");
			autenticado = true;
		}
		
		
		return autenticado;
	}
	

	public boolean adiciona(Usuario t){
		
		Connection c = null;
		PreparedStatement stmt = null;
		boolean retorno = false;
		try {

			c = ConectaBDPostgres.getConexao();
			String sql = "";
			
			if(t.getId()<= 0){
				System.out.println("......... vai adicionar usuario .............");
				
				sql = "insert into rf_user(nome,senha,email) "
						+ "values (?,?,?)";
				
				System.out.println("insere a instrução na string sql OK");
				
				stmt = c.prepareStatement(sql);	
				stmt.setString(1, t.getNome());
				stmt.setString(2, t.getSenha());
				stmt.setString(3, t.getEmail());
				
				
			}/*else{
				System.out.println("......... vai alterar .............");
				sql = "UPDATE USUARIO SET LOGIN =?, SENHA=?  "
						+ " WHERE id =?";
				stmt = c.prepareStatement(sql);	
				stmt.setLong(1, t.getId());				
				stmt.setString(2, t.getLogin());
				stmt.setString(3, t.getSenha());
				
			}*/
							
			stmt.execute();			
			stmt.close();
			retorno = true;
			
		} catch (Exception e) {
			e.printStackTrace();
			return retorno;
			
		}	
		return retorno;
	}
	
/*	
	public List<Usuario> getUsuarios(){
		ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
		System.out.println("dentro do getUsuarios()");
		try{
				
			PreparedStatement stmt =  ConectaBDPostgres.getConexao().prepareStatement("select * from USUARIO");
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){
				Usuario t = new Usuario();
				t.setId(rs.getLong("id"));
				t.setLogin(rs.getString("login"));
				t.setSenha(rs.getString("senha"));
				System.out.println("usuário: "+t.getLogin());
				usuarios.add(t);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return usuarios;
	}
	
	public Usuario getUsuario(Long id){
		Usuario u = new Usuario();
		
		try{
			
			PreparedStatement stmt =  
					ConectaBDPostgres
						.getConexao()
							.prepareStatement("select * from USUARIO where id = ?");
			stmt.setLong(1, id);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){				
				u.setId(rs.getLong("id"));
				u.setLogin(rs.getString("login"));
				u.setSenha(rs.getString("senha"));
				System.out.println("usuário: "+u.getLogin());
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return u;
	}
	
	
	public boolean remover(Long id){
		boolean retorno = false;
		
		String sql = "delete from USUARIO where id = ?";
		Connection c = ConectaBDPostgres
				.getConexao();
		PreparedStatement stmt = null;
		
		try {
			stmt = c.prepareStatement(sql);
			stmt.setLong(1, id);
			stmt.execute();
			retorno = true;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
		return retorno;
	}
	*/
}
