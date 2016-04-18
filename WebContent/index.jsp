
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<%@ include file="head.jsp"%>
</head>
<body>
	<!-- barra de pesquisa -->
	<c:if test="${not empty usuario }">
			<%@ include file="WEB-INF/jsp/pesquisa.jsp" %>
	</c:if>
	
	<c:if test="${empty usuario }">
	<%@ include file="WEB-INF/jsp/login.jsp" %>
	</c:if>
	
	
	<!-- conteúdo -->
	<section>
		<div class="container">
		
			
			
			
			<!-- Conteúdo principal -->
			
			<c:if test="${empty usuario }">
				<div class="col-md-9">
					<%@ include file="WEB-INF/jsp/infoIni.jsp" %>
				</div>
			</c:if>
				
			<c:if test="${not empty usuario }">
				<div class="col-md-9">
					<%@ include file="WEB-INF/jsp/conteudo.jsp" %>
				</div>
			</c:if>
			
			
			<!-- Menu lateral categorias -->
			<div class="col-md-3" style="border-left:2px #000 solid">
				<h3>CATEGORIAS
					<c:if test="${not empty usuario }">
						<span class="glyphicon glyphicon-object-align-horizontal"></span>
					</c:if>
					
					<c:if test="${empty usuario }">
						<span class="glyphicon glyphicon-lock"></span>
					</c:if>
				</h3>
				
				<%@ include file="WEB-INF/jsp/categorias.jsp"%>
				
			</div>
			<!-- FIM Menu lateral categorias -->
			
		</div>
	</section>
<br><br><br><br>
	<%@ include file="WEB-INF/jsp/footer.jsp"%>
</body>
</html>