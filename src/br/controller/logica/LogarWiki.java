package br.controller.logica;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.model.dao.UsuarioDAO;
import br.model.user.Usuario;

public class LogarWiki implements Logica{

	@Override
	public String executa(HttpServletRequest rq, HttpServletResponse rp) {
		System.out.println("----- Dentro do LogarWiki ------");
		
		String nome = rq.getParameter("nome");
		String senha = rq.getParameter("senha");
		
		System.out.println("NOME: "+nome+" SENHA: "+senha);

		Usuario u = new Usuario();
		
		u.setNome(nome);
		u.setSenha(senha);
		
		UsuarioDAO ud = new UsuarioDAO();
		
		String pagina = "/index.jsp";
		
		try {
			
			boolean retorno = ud.autenticado(u);
			if(retorno){
				System.out.println("Retorna LOGADO");	
				pagina = "/index.jsp";
				rq.getSession().setAttribute("usuarioLogado", u);
				rq.setAttribute("usuario", u);
			//	rq.setAttribute("usuarios", ud.getUsuarios());
			}else{
				System.out.println("Retorna NÃO LOGADO");
				rq.setAttribute("msg", "Problemas ao logar");
			}
			
		} catch (SQLException e) {		
			e.printStackTrace();
			rq.setAttribute("msg", "Problemas ao logar");
			return pagina;
		}

		
		return pagina;
	}

}
