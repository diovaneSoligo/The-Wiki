package br.controller.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.model.dao.UsuarioDAO;
import br.model.user.Usuario;

public class AlterarContaWiki implements Logica{
	
	public String executa(HttpServletRequest rq, HttpServletResponse rp) {
		System.out.println(".......... dentro de Alterar Conta Wiki");
		
		String user=rq.getParameter("USER");
		String id=rq.getParameter("ID");
		
		String nome = rq.getParameter("nome");
		String senha = rq.getParameter("senha");
		String email = rq.getParameter("email");
		
		System.out.println("Nome: "+nome);
		System.out.println("Senha: "+senha);
		System.out.println("Email: "+email);
		
		System.out.println("ID: "+id);
		System.out.println("USER: "+user);
		
		Usuario u= new Usuario();
		
		u.setNome(nome);
		u.setSenha(senha);
		u.setEmail(email);
		u.setId(Long.parseLong(id));

		UsuarioDAO uD = new UsuarioDAO();
		
		String pagina = "/index.jsp";
		
		try {
			
			boolean retorno = uD.AlteraContaWiki(u,user);
			if(retorno){
				System.out.println("Alterou volta para index com mensagem");
				pagina = "mvc?Logica=DeslogarWiki";
				rq.setAttribute("alterOK", "Altração realizada");
				
			}else{
				System.out.println("entrou em else");
				rq.setAttribute("alterNAOOK", "Problemas ao Alterar usuário");
			}
			
		} catch (Exception e) {		
			e.printStackTrace();
			rq.setAttribute("alterNAOOK", "Problemas ao Alterar usuário CATCH");
			return pagina;
		}
			return pagina;//
		
	}
}
