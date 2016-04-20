		<h3>
		Opções
			<c:if test="${not empty usuarioLogado }">
				<span class="glyphicon glyphicon-cog"></span>
			</c:if>
			
			<c:if test="${empty usuarioLogado }">
				<span class="glyphicon glyphicon-lock"></span>
			</c:if>
			 
		</h3>