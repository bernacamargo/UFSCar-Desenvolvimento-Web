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

  	<div class="container-fluid" style="height: 300px; background-image: url('img/background4.jpg'); background-position: bottom; background-repeat: no-repeat; background-size: cover;">
  		<div class="row">
  			<div class="col-md-12" align="center">
                           
  				<br><br><br>
                                <h1 style="color: #fff; font-size: 65pt;">MOVIE HUNTER</h1>
  			</div>
  		</div>
  	</div>

	<nav class="navbar navbar-inverse" style="border-radius: 0;">
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
	        <li ><a id="menu-busca" href="index.jsp"><span class="glyphicon glyphicon-search"></span> Procurar</a></li>
                <li class="active"><a id="menu-ranking" href="ranking.jsp"><i class="fa fa-star"></i> Ranking</a></li>
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
                    <a class="btn btn-default" href="ranking.jsp"><i class="fa fa-arrow-circle-left"></i> Voltar</a>
                    <br><br>
                </div>
            </div>
            
    <%
        ResultadoRanking res = (ResultadoRanking)request.getAttribute("ResultadoRanking");
        if(res == null) {
    %>
    
    
    <%
        } else {   
            String genero = request.getParameter("genero"); 
            String ano_inicio = request.getParameter("ano_inicio");
            String ano_fim = request.getParameter("ano_fim");
    %>
            <div class="row">
		<div id="result" class="col-md-12">
                    <div class="text-center">
                        <h1><small><i class="fa fa-star"></i></small>&ensp;R&ensp;A&ensp;N&ensp;K&ensp;I&ensp;N&ensp;G&ensp;<small><i class="fa fa-star"></i></small></h1>
			<hr>
                        <br>
                        <h4 class="text-left">
                            <b><% out.println(genero); %></b> 
                            <br> 
                            <% if(ano_inicio != null && ano_fim != null){ %>
                            De:&ensp;<b><% out.println(ano_inicio); %></b> até&ensp;<b><% out.println(ano_fim); }%></b>
                        </h4>
                    </div>
                        

			<div class="container-result">

				<table class="table table-striped table-hover">
					<tr>
                                                <th>#</th>
						<th>Quantidade de filmes</th>
						<th>Nome</th>
					</tr>

                                        <% 
                                            for (int i = 0 ; i < res.size() ; i++){
                                                if(i == 0){
                                                    out.println("<tr><td><b class='numero'>"+ (i+1) +"&ensp;<span class='pull-left'><i class='fa fa-star ouro'></i></span></b></td>" + res.returnAtor(i) + "</tr>");
                                                }
                                                else if(i == 1){
                                                    out.println("<tr><td><b class='numero' >"+ (i+1) +"&ensp;<span class='pull-left'><i class='fa fa-star prata'></i></span></b></td>" + res.returnAtor(i) + "</tr>");
                                                }
                                                else if(i == 2){
                                                    out.println("<tr><td><b class='numero'>"+ (i+1) +"&ensp;<span class='pull-left'><i class='fa fa-star bronze'></i></span></b></td>" + res.returnAtor(i) + "</tr>");
                                                }                                                
                                                else 
                                                    out.println("<tr><td><b class='numero'>"+ (i+1) +"</b></td>" + res.returnAtor(i) + "</tr>");
                                            }
                                        %>

                                </table>
		<nav aria-label="Page navigation" align="center">
		  <ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
                                        
			</div>
		</div>
            </div>
                <% } %>
	</div>

	<footer>
		<span class="" style="margin-right: 20px;"><b>MovieHunter</b> &copy; 2017 All rights reserved</span> <br>
                <small style="margin-left: 20px;">Developers:<br> Bernardo Camargo, Vitor Pratali, Lucas Occaso, Arthur Toledo</small>
	</footer>
    <!-- jQuery (obrigatório para plugins JavaScript do Bootstrap) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="web/jquery/jquery-ui-1.12.1.ui-light/jquery-ui.min.js"></script>

    <!-- Inclui todos os plugins compilados (abaixo), ou inclua arquivos separadados se necessário -->
    <script src="web/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="web/plugins/tag-it/js/tag-it.min.js"></script>
    <script src="web/plugins/WOW-master/dist/wow.min.js"></script>


    <script type="text/javascript">
		var wow = new WOW(
		  {
		    boxClass:     'wow',      // animated element css class (default is wow)
		    animateClass: 'animated', // animation css class (default is animated)
		    offset:       0,          // distance to the element when triggering the animation (default is 0)
		    mobile:       true,       // trigger animations on mobile devices (default is true)
		    live:         true,       // act on asynchronously loaded content (default is true)
		    callback:     function(box) {
		      // the callback is fired every time an animation is started
		      // the argument that is passed in is the DOM node being animated
		    },
		    scrollContainer: null // optional scroll container selector, otherwise use window
		  }
		);
		wow.init();

    	$(document).ready(function() {

      		$('#menu-ranking').click(function(event){
      			$('#menu-busca').parent().removeClass('active');
      			$(this).parent().addClass('active');
      			/*$("#ranking").show();
      			$('#buscar').hide();*/
      			$('#buscar').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceOutRight animated').hide();    			
      			$('#ranking').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceInLeft animated').show();
      		});

      		$('#menu-busca').click(function(event){
      			$('#menu-ranking').parent().removeClass('active');
      			$(this).parent().addClass('active');
      			/*$("#buscar").show();
      			$('#ranking').hide();*/
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
