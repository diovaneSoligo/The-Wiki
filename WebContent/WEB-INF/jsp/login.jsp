
<nav class="navbar" role="navigation" style="background-color: rgba(227, 227, 227, 0.42);border-top: 3px solid rgb(0, 0, 0);">
            <div class="container">
                
                	<div class="row">
                		<div class="col-md-3">
                			<img id="logo" class="img img-responsive" src="img/logo-wiki.png" style="max-width: 41%;"/>
                		</div>
                		<div class="col-md-5" style="margin-top: 1.333%;">
                			<form action="mvc?Logica=LogarWiki" method="post">
                                <div class="input-group">
									 <input type="text" id="nome" name="nome" placeholder="Nome de Usuario">
									  <input type="password" id="senha" name="senha" placeholder="Senha The Wiki">
									 
									 <button class="btn btn-default" type="submit" name="opcao">Logar <span class="glyphicon glyphicon-log-in"></span></button>
									
								</div>
                            </form>
                		</div>
                		<div class="col-md-4">
                			<h4><small>Ainda não possui uma conta? </small>
                			<a href="#" data-toggle="modal" data-target="#myModal" style="font-family:'Yanone Kaffeesatz',sans-serif">
                			Crie uma conta <span class="glyphicon glyphicon-edit"></span>
                			</a>
                			</h4>
                			
                			<c:if test="${not empty cadOK }">
                			<h6 style="color:blue"> 
                			Usuário Cadastrado com sucesso
                			<span class="glyphicon glyphicon-ok"> </span>
                			</h6>
                			</c:if>
                			
                			<c:if test="${not empty cadNAOOK }">
                			<h6 style="color:red"> 
                			ERRO AO CADASTRAR,<small> USUÁRIO JÁ EXISTE!</small>
                			<span class="glyphicon glyphicon-warning-sign"> </span>
                			</h6>
                			</c:if>
                			
                			<c:if test="${not empty msg }">
                			<h6 style="color:red">
                			<span class="glyphicon glyphicon-alert"></span>
                			Usuário ou Senha inválidos
                			<a href="" data-toggle="modal" data-target="#myModal2"> <span class="glyphicon glyphicon-envelope"></span> Recuperar conta?</a>
                			</h6>
                			</c:if>
                			
                			<c:if test="${not empty alterOK }">
                			<h6 style="color:green">
                			<span class="glyphicon glyphicon-ok"> </span> 
                			<small> USUÁRIO ALTERADO, entre com seu novo Login </small>
                			</h6>
                			</c:if>
                		</div>
                	</div>
                	
            </div>
        </nav>
        
        
<!-- Modal Criar Conta Wiki-->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
    
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h2 class="modal-title text-center" style="font-family:'Yanone Kaffeesatz',sans-serif">
        <img id="logo" class="img img-responsive" src="img/logo-wiki2.png" style="max-width: 10%;margin-left: 45%;"/>
        The Wiki Cadastro</h2>
      </div>
      
       <form action="mvc?Logica=CadastroWiki" method="post" class="form-horizontal" role="form" style="margin-right: 20px;margin-top: 15px;">
		  
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="email">* E-mail:</label>
		    <div class="col-sm-10">
		      <input type="email" class="form-control" id="email" name="email" placeholder="(OBRIGATÓRIO) E-mail para caso precise recuperar sua conta" required>
		    
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="pwd">* Usuário:</label>
		    <div class="col-sm-10">
		      <input type="login" class="form-control" id="pwd" name="nome" placeholder="(OBRIGATÓRIO) Nome ou apelido para acesso" pattern="[a-zA-Z0-9]+" required>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="pwd">* Senha:</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" id="pwd" name="senha" placeholder="(OBRIGATÓRIO) Senha The Wiki" pattern="[a-zA-Z0-9]+" required>
		    </div>
		  </div>
		  
		  <small style="margin-left: 15px;"> * - campos obrigatórios</small><br><br>
		  
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-primary">Cadastrar-me <span class="glyphicon glyphicon-edit"></span></button>
		    </div>
		  </div>
		  
		</form>
		
    </div>

  </div>
</div>

<!-- Modal recuperar conta-->
<div id="myModal2" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
    
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h2 class="modal-title text-center" style="font-family:'Yanone Kaffeesatz',sans-serif">
        <img id="logo" class="img img-responsive" src="img/logo-wiki2.png" style="max-width: 10%;margin-left: 45%;"/>
        Recuperar Conta The Wiki</h2>
      </div>
       <form action="#" method="post" class="form-horizontal" role="form" style="margin-right: 20px;margin-top: 15px;">
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="email">E-mail:</label>
		    <div class="col-sm-10">
		      <input type="email" class="form-control" id="email" placeholder="E-mail colocado na hora do cadastro" required>
		    </div>
		  </div>
		  <h4 style="text-align: center;">Insira seu e-mail e clique em recuperar conta, logo após vá em seu e-mail para ver seus dados</h4>
		  
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button style="margin-left: 25%;" type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-envelope"></span> Recuperar Conta</button>
		    </div>
		  </div>
		</form>
    </div>

  </div>
</div>