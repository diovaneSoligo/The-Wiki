package br.controller.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.model.dao.UsuarioDAO;
import br.model.user.Usuario;

import java.sql.SQLException;


public class CadastroWiki implements Logica {
	@Override
	public String executa(HttpServletRequest rq, HttpServletResponse rp) {
		System.out.println(".......... dentro de inserir Usuario Wiki");
		
		String nome = rq.getParameter("nome");
		String senha = rq.getParameter("senha");
		String email = rq.getParameter("email");
		
		System.out.println("Nome: "+nome);
		System.out.println("Senha: "+senha);
		System.out.println("Email: "+email);
		
		String id = rq.getParameter("id");
		System.out.println("ID ..." +id);
		
		
		Usuario u= new Usuario();
		u.setNome(nome);
		u.setSenha(senha);
		u.setEmail(email);
					
		if(id==null){
			System.out.println("novo usuario....");
		}else{
			u.setId(Long.parseLong(id));
		}

		UsuarioDAO uD = new UsuarioDAO();
		
		String pagina = "/index.jsp";
		
		try {
			
			boolean retorno = uD.adiciona(u);
			if(retorno){
				System.out.println("inseriu volta para index com mensagem");
				pagina = "/index.jsp";
				rq.setAttribute("cadOK", "cadastro realizado");
				
				
			}else{
				System.out.println("entrou em else");
				rq.setAttribute("cadNAOOK", "Problemas ao inserir usuário");
			}
			
		} catch (Exception e) {		
			e.printStackTrace();
			rq.setAttribute("msg", "Problemas ao inserir usuário CATCH");
			return pagina;
		}
			

			return pagina;//
		
		 
	}
}
