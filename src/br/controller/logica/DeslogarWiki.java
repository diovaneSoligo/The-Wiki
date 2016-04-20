package br.controller.logica;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DeslogarWiki implements Logica{
	
	public String executa(HttpServletRequest rq, HttpServletResponse rp) {
		
		System.out.println("Dentro de deslogar usuario");
		
		String pagina = "/index.jsp";
		
		try {
			System.out.println("vai encerra a sess�o");
			
			rq.getSession().invalidate();
			
			System.out.println("Encerrou a Sess�o");
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("deslogar usuario catch");
		}
		
		
		
		
		
		
		
		return pagina;

	}
	
	
}
