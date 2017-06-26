<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">    
    <link rel="stylesheet" href="web/jquery/jquery-ui-1.12.1.ui-light/jquery-ui.min.css">
    <link rel="stylesheet" href="web/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link href="web/plugins/tag-it/css/jquery.tagit.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="web/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="web/plugins/WOW-master/css/libs/animate.css">
    <link rel="stylesheet" href="web/estilo.css">
    <!-- As 3 meta tags acima *devem* vir em primeiro lugar dentro do `head`; qualquer outro conteúdo deve vir *após* essas tags -->
    <title>MovieHunter</title>

    <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->
    <!-- ALERTA: Respond.js não funciona se você visualizar uma página file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

  	<div class="container-fluid" style="height: 300px; background-image: url('img/background4.jpg'); background-position: bottom; background-repeat: no-repeat; background-size: cover; background-attachment:  local">
  		<div class="row" style="background: rgba(0,0,0,.3); height: 100%;">
  			<div class="col-md-12" align="center">
                           
                            <br><br><br><br>
                                <h1 style="color: #fff; font-size: 65pt;">MOVIE HUNTER</h1>
  			</div>
  		</div>
  	</div>

	<nav class="navbar navbar-inverse" style="background-color: #111; border-radius: 0;" align="center">
	  <div class="container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="index.jsp"><i class="fa fa-video-camera"></i>&ensp;MH</a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav menu-principal">
	        <li class="active"><a id="menu-busca" href="index.jsp"><span class="glyphicon glyphicon-search"></span> Procurar</a></li>
                <li><a id="menu-ranking" href="ranking.jsp"><i class="fa fa-star"></i> Ranking</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	      </ul>

	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>

	<div class="wrapper container">
            
            <div class="row">
                <div class="col-md-12">
                    <br>
                    <a class="btn btn-default" href="index.jsp"><i class="fa fa-arrow-circle-left"></i> Voltar</a>
                    <br><br>
                </div>
            </div>		
            
    <%
        ResultadoBusca res = (ResultadoBusca)request.getAttribute("ResultadoBusca");
        if(res == null) {
    %>
    <div class="alert alert-danger">
        <h1><i class="fa fa-warning"></i> Ocorreu um erro ao realizar a busca. Contate o administrador da página.</h1>
    </div>

    <%
        } else {    
    %>

		<div id="result" class="col-md-12">
			<h1>Filmes encontrados</h1>
			<hr>

			<div class="container-result">

				<table class="table table-striped table-hover">
					<tr>
						<th>Titulo</th>
						<th>Ano</th>
						<th>Diretor</th>
						<th>Gênero</th>
						<th>Idioma</th>
					</tr>

                                        <% 
                                            int i;
                                            for (i = 0 ; i < res.size() ; i++){
                                                out.println("<tr>" + res.returnMovie(i) + "</tr>");
                                            }
                                            
                                            if(i == 0){
                                        %>
                                        
                                        <div class="alert alert-danger">
                                            <h2 class="text-center">
                                                <span class="fa fa-warning"></span> Nenhum resultado encontrado
                                            </h2>
                                        </div>
                                        
                                        <% } %>
                                </table>
                    <nav aria-label="Page navigation" align="center">
                      <ul class="pagination">
                        <% 
                        if(true){
                            String pag = request.getParameter("pag");
                            int pagina = 1, ant1, ant2, ant3, prox1, prox2, prox3;
                            
                            if(pag != null){
                                pagina = Integer.parseInt(pag);
                            }
                                                        
                            ant1 = pagina-1;
                            ant2 = pagina-2;
                            ant3 = pagina-3;
                            prox1 = pagina+1;
                            
                            // Armaze a String da query (BuscaAvancada?titulo=...)
                            String url = request.getQueryString();
                            if(pagina == 1){
                                url = url.replace("&pag="+pagina, "");
                                url = "/moviehunter/BuscaAvancada?" + url + "&pag=";
                            }
                            else{
                                url = url.replace("pag="+pagina, "");                                
                                url = "/moviehunter/BuscaAvancada?" + url + "pag=";
                            }
                            if(pagina != 1){
                            %>
                            <li>
                                <a href="<%=url+"1"%>" aria-label="First">
                                  <span aria-hidden="true">Primeira</span>
                                </a>
                             </li>

                            <li>
                                <a href="<%=url+ant1%>" aria-label="Previous">
                                  <span aria-hidden="true">&laquo;</span>
                                </a>
                             </li>

                            <%
                            }
                            if(ant2 > 0)
                                out.println("<li><a href='"+url+ant2+"'>"+ant2+"</a></li>");
                            if(ant1 > 0)
                                out.println("<li><a href='"+url+ant1+"'>"+ant1+"</a></li>");
                            
                            
                                out.println("<li class='active'><a href='"+url+pagina+"'>"+pagina+"</a></li>");
                            if(i > 9){
                                out.println("<li><a href='"+url+prox1+"'>"+prox1+"</a></li>");
                            
    
                        %>
                        <li>
                          <a href="<%=url+prox1%>" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                          </a>
                        </li>
                        <% }} %>
                      </ul>
                    </nav>                                        
			</div>
		</div>
        <% } %>
	</div>

	<footer>
		<span class=""><b>MovieHunter</b> &copy; 2017 All rights reserved</span> <br>
                <small >Developers:<br> Bernardo Camargo, Vitor Pratali, Lucas Occaso, Arthur Toledo</small>
                <button class="btn btn-default pull-right" onclick="$(document).scrollTop(0)"><i class="fa fa-arrow-up"></i> Topo</button>                
	</footer>
    <!-- jQuery (obrigatório para plugins JavaScript do Bootstrap) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="web/jquery/jquery-ui-1.12.1.ui-light/jquery-ui.min.js"></script>

    <!-- Inclui todos os plugins compilados (abaixo), ou inclua arquivos separadados se necessário -->
    <script src="web/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="web/plugins/tag-it/js/tag-it.min.js"></script>
    <script src="web/plugins/WOW-master/dist/wow.min.js"></script>


    <script type="text/javascript">
    	$(document).ready(function() {
      		$('#menu-ranking').click(function(event){
      			$('#menu-busca').parent().removeClass('active');
      			$(this).parent().addClass('active');
      			$('#buscar').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceOutRight animated').hide();    			
      			$('#ranking').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceInLeft animated').show();
      		});

      		$('#menu-busca').click(function(event){
      			$('#menu-ranking').parent().removeClass('active');
      			$(this).parent().addClass('active');
      			$('#buscar').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceInLeft animated').show();
      			$('#ranking').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceOutRight animated').hide();      			
      		});

    		$('#diretor').tagit({
    			allowSpaces: true,
    			placeholderText: "Digite o nome do diretor",
    			availableTags: ["c++", "java", "php", "javascript", "ruby", "python", "c"],
    			autocomplete: {delay: 0, minLength: 2}
    		});
    	});
    </script>
  </body>
</html>
