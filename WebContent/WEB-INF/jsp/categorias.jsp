			
				<ul>
					<c:if test="${not empty usuarioLogado }">
					<h4>Programação:</h4>
					<a href="index.jsp"><li>PHP</li></a>
					<a href="#"><li>JAVA</li></a>
					<a href="#"><li>C</li></a>
					<a href="#"><li>PYTHON</li></a>
					<a href="#"><li>C#</li></a>
					<a href="#"><li>C++</li></a>
					<a href="#"><li>SQL</li></a>
					<a href="#"><li>JAVA SCRIPT</li></a>
					<a href="#"><li>RUBY</li></a>
					<a href="#"><li>OBJECTIVE-C</li></a>
					<a href="#"><li>PERL</li></a>
					<a href="#"><li>.NET</li></a>
					<a href="#"><li>VISUAL BASIC</li></a>
					<a href="#"><li>R</li></a>
					<a href="#"><li>SWIFT</li></a>
					<a href="#"><li>OUTROS</li></a>
					<br><br>
					<h4>Marcação:</h4>
					<a href="#"><li>HTML</li></a>
					<a href="#"><li>XML</li></a>
					
					</c:if>
					
					<c:if test="${empty usuarioLogado }">
					<h4>Programação:</h4>
					<li title="Faça o Login para ter acesso!">PHP</li>
					<li title="Faça o Login para ter acesso!">JAVA</li>
					<li title="Faça o Login para ter acesso!">C</li>
					<li title="Faça o Login para ter acesso!">PYTHON</li>
					<li title="Faça o Login para ter acesso!">C#</li>
					<li title="Faça o Login para ter acesso!">C++</li>
					<li title="Faça o Login para ter acesso!">SQL</li>
					<li title="Faça o Login para ter acesso!">JAVA SCRIPT</li>
					<li title="Faça o Login para ter acesso!">RUBY</li>
					<li title="Faça o Login para ter acesso!">OBJECTIVE-C</li>
					<li title="Faça o Login para ter acesso!">PERL</li>
					<li title="Faça o Login para ter acesso!">.NET</li>
					<li title="Faça o Login para ter acesso!">VISUAL BASIC</li>
					<li title="Faça o Login para ter acesso!">R</li>
					<li title="Faça o Login para ter acesso!">SWIFT</li>
					<li title="Faça o Login para ter acesso!">OUTROS</li>
					<br><br>
					<h4>Marcação:</h4>
					<li title="Faça o Login para ter acesso!">HTML</li>
					<li title="Faça o Login para ter acesso!">XML</li>
					</c:if>
				</ul>
