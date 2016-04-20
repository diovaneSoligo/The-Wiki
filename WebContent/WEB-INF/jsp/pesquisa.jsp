<!--  Barra topo  -->
        <nav class="navbar" role="navigation" style="background-color: rgba(227, 227, 227, 0.42);border-top: 3px solid rgb(0, 0, 0);">
            <div class="container">
                
                	<div class="row">
                		<div class="col-md-4" style="margin-right: 0px;">
                			<img id="logo" class="img img-responsive" src="img/logo-wiki.png" style="max-width: 30%;"/>
                		</div>
                		<div class="col-md-4" style="margin-top: 1.333%;margin-bottom: 2.333%;">
                			<form action="index.jsp">
                                <div class="input-group">
									 <input type="text" class="form-control" placeholder="Pesquisar ...">
									 <span class="input-group-btn">
									 <button class="btn btn-default" type="#">BUSCAR <span class="glyphicon glyphicon-search"></span></button>
									</span>
								</div>
                            </form>
                           <!--  <h1>${usuario.nome} -autenticado!</h1> -->
                		</div>
                		<div class="col-md-4 col-xs-12">
                			<div class="row">
                				<div class="col-md-7">
                					<h4 style="color:#22B14C;font-family:'Yanone Kaffeesatz',sans-serif">
                						<span class="glyphicon glyphicon-user"></span>
                						Olá ${usuarioLogado.nome}<br><h6><span class="glyphicon glyphicon-envelope"> ${usuarioLogado.email}</span></h6> 
                					</h4>
                					<c:if test="${not empty alterNAOOK }">
                						<h6 style="color:red"> 
				                			<span class="glyphicon glyphicon-info-sign"> </span>
				                			<small>Problemas ao alterar dados de usuário</small>
			                			</h6>
		                			</c:if>
                				</div>
                				<div class="col-md-5">
                					<a href="mvc?Logica=DeslogarWiki">
                						<h4 class="text-right" style="font-family:'Yanone Kaffeesatz',sans-serif">
	                						<small>
	                							Logout
	                							<span class="glyphicon glyphicon-log-out"></span>
	                						</small>
                						</h4>
                					</a>
                					<a href="#" data-toggle="modal" data-target="#myModalConf">
                						<h4 class="text-right" style="font-family:'Yanone Kaffeesatz',sans-serif">
	                						<small>
	                							Configurações
	                							<span class="glyphicon glyphicon-cog"></span>
	                						</small>
                						</h4>
                					</a>
                					
                				</div>
                			
                			</div>
                		
                		
                		
                		</div>
                	</div>
            </div>
        </nav>
        
  <!-- Modal Configurações-->
<div id="myModalConf" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
    
      <div class="modal-header">
        <h2 class="modal-title text-center" style="font-family:'Yanone Kaffeesatz',sans-serif">
        <img id="logo" class="img img-responsive" src="img/logo-wiki2.png" style="max-width: 10%;margin-left: 45%;"/>
        Configuração de Conta de Usuário</h2>
      </div>
      
       <form action="mvc?Logica=AlterarContaWiki&ID=${usuarioLogado.id}&USER=${usuarioLogado.nome}" method="post" class="form-horizontal" role="form" style="margin-right: 20px;margin-top: 15px;">
		  
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="email">E-mail:</label>
		    <div class="col-sm-10">
		      <input type="email" class="form-control" id="email" name="email"  value="${usuarioLogado.email}"required>
		    
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="pwd">* Usuário:</label>
		    <div class="col-sm-10">
		      <input type="login" class="form-control" id="pwd" name="nome" value="${usuarioLogado.nome}" pattern="[a-zA-Z0-9]+" required>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="pwd">* Senha:</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" id="pwd" name="senha"  pattern="[a-zA-Z0-9]+"  value="${usuarioLogado.senha}"required>
		    </div>
		  </div>
		  
		  <small style="margin-left: 15px;">ss</small><br><br>
		  
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">	
		    	<button type="submit" class="close">Alterar <span class="glyphicon glyphicon-pencil"></span></button>
		    	<button type="button" class="close" style="" data-dismiss="modal"> Cancelar <span class="glyphicon glyphicon-remove"></span></button>
		    </div>
		  </div>
		  
		</form>
		
    </div>

  </div>
</div>