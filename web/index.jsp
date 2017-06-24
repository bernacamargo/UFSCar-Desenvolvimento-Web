<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="web/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="web/estilo.css">
    <!-- As 3 meta tags acima *devem* vir em primeiro lugar dentro do `head`; qualquer outro conteÃºdo deve vir *apÃ³s* essas tags -->
    <title>Trabalhoweb</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->
    <!-- ALERTA: Respond.js nÃ£o funciona se vocÃª visualizar uma pÃ¡gina file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

  	<div class="container-fluid" style="height: 300px; background-image: url('img/background6.jpg'); background-position: bottom">
  		<div class="row">
  			<div class="col-md-12" align="center">
  				<br><br><br>
  				<h1 style="color: #fff;">C&ensp;O&ensp;F&ensp;F&ensp;E&ensp;<br>T&ensp;I&ensp;M&ensp;E&ensp;</h1>
  			</div>
  		</div>
  	</div>

	<nav class="navbar navbar-default">
	  <div class="container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">CoffeTime</a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="#"><span class="glyphicon glyphicon-search"></span> Buscar filme</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-signal"></span> Ranking</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#" class="btn">Sign In</a></li>
	      </ul>

	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>

	<div class="wrapper container-fluid">
		<br><br>
		<form id="form-busca" method="GET" action="BuscaAvancada" class="col-md-6 col-md-offset-3">
			
			<div class="form-group">
				<label for="titulo">Título</label>
				<input id="titulo" name="titulo" type="text" class="form-control">
			</div>

			<div class="form-group">
				<label for="diretor">Diretor</label>
				<input id="diretor" name="diretor" type="text" class="form-control">
			</div>
			
			<div class="text-center">
				<button class="btn btn-lg btn-primary">
					<span class="glyphicon glyphicon-search"></span> Pesquisar
				</button>
			</div>
			<div class="row">
				<div class="col-md-3 form-group">
					<label for="limite">Visualizar</label>
					<select name="limite" id="limite" class="form-control">
						<option value="50">50</option>
						<option value="100">100</option>
						<option value="200">200</option>
						<option value="500">500</option>
						<option value="1000">1000</option>
						<option value="all">Todos</option>
					</select>
				</div>
			</div>

		</form>
                
                <%
                    ResultadoBusca res = (ResultadoBusca)request.getAttribute("ResultadoBusca");
                    if(res == null) {
                    
                        out.println("errrouuu");
                    }else{
                    
                %>


		<div id="resultado" class="col-md-6 col-md-offset-3">
			<div class="filme-container">				
                            <%
                                    for (int i = 0 ; i < res.size() ; i++){
                                        out.println("<tr>" + res.returnMovie(i) + res.returnDirector(i) + "</tr>");
                                    }
                                }
                            %>                                   
			</div>
		</div>

	</div>

	<footer>Desenvolvimento Web 2017</footer>
    <!-- jQuery (obrigatÃ³rio para plugins JavaScript do Bootstrap) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Inclui todos os plugins compilados (abaixo), ou inclua arquivos separadados se necessÃ¡rio -->
    <script src="web/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </body>
</html>
