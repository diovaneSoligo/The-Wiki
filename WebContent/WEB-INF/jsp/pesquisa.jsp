<!--  Barra topo  -->
        <nav class="navbar" role="navigation" style="background-color: rgba(227, 227, 227, 0.42);border-top: 3px solid rgb(0, 0, 0);">
            <div class="container">
                
                	<div class="row">
                		<div class="col-md-4" style="margin-right: -180px;">
                			<img id="logo" class="img img-responsive" src="img/logo-wiki.png" style="max-width: 30%;"/>
                		</div>
                		<div class="col-md-5" style="margin-top: 1.333%;margin-bottom: 2.333%;">
                			<form action="#">
                                <div class="input-group">
									 <input type="text" class="form-control" placeholder="Pesquisar ...">
									 <span class="input-group-btn">
									 <button class="btn btn-default" type="">IR! <span class="glyphicon glyphicon-search"></span></button>
									</span>
								</div>
                            </form>
                           <!--  <h1>${usuario.nome} -autenticado!</h1> -->
                		</div>
                		<div class="col-md-3 col-xs-12">
                			<div class="row">
                				<div class="col-md-7">
                					<h3 style="color:#22B14C;font-family:'Yanone Kaffeesatz',sans-serif">
                						<span class="glyphicon glyphicon-user"></span>
                						Olá ${usuarioLogado.nome} ${usuarioLogado.id}
                					</h3>
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
                					<a href="/Wiki">
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