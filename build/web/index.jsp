<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">    
    <!--<link rel="stylesheet" href="build/web/jquery/jquery-ui-1.12.1.ui-lightness/jquery-ui.min.css">-->
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
      
      <div hidden id="preloader" class="container-fluid" style="padding-top: 300px; padding-left: 620px; overflow: hidden; width: 100%; height: 100%; position: fixed; top: 0; left: 0; z-index: 999; background: #fff;">
            <h1 style="font-size: 50pt;"
                <i class="fa fa-refresh fa-spin fa-3x fa-fw"></i>
                <span class="sr-only">Loading...</span>
            </h1>

      </div>

  	<div class="container-fluid" style="height: 300px; background-image: url('img/background4.jpg'); background-position: bottom; background-repeat: no-repeat; background-size: cover; background-attachment:  local">
  		<div class="row" style="background: rgba(0,0,0,.5); height: 100%;">
  			<div class="col-md-12" align="center">
                           
                            <br><br><br><br><br>
                                <h1 style="color: #fff; font-size: 65pt;">MOVIE HUNTER</h1>
  			</div>
  		</div>
  	</div>

	<nav class="navbar navbar-inverse" style="background-color: #111; border-radius: 0;" align="center">
	  <div class="container" align="center">
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
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
	      <ul class="nav navbar-nav menu-principal">
	        <li class="active"><a id="menu-busca" href="index.jsp"><span class="glyphicon glyphicon-search"></span> Procurar</a></li>
                <li ><a id="menu-ranking" href="ranking.jsp"><i class="fa fa-star"></i> Ranking</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	      </ul>

	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>

	<div id="buscar" class="wrapper container">
		<br><br>
		<div class="">
			<h1 class="text-bold text-center">
				B&ensp;U&ensp;S&ensp;C&ensp;A 
			</h1>
                    <hr>
                </div><br>
		<form id="form-busca" method="GET" action="BuscaAvancada" class="form-busca col-md-8 col-md-offset-2">
			
			<div class="form-group">
				<input id="titulo" name="titulo" type="text" class="input-lg form-control" placeholder="Pesquise pelo título do filme">
			</div>

			<div class="form-group">
                                <label for="diretor">TAG's Diretores</label>
				<input id="diretor" name="diretor" type="text" class="input-lg form-control">
				<p class="help-block">Digite o nome de um Diretor e pressione ENTER para adicionar a TAG de busca.</p>
			</div>
                    <br>
			<div class="text-center">
				<button class="btn btn-lg btn-primary">
					<span class="glyphicon glyphicon-search"></span> Pesquisar
				</button>
			</div>
                    
                    
		</form>

	</div>

	<footer>
		<span class="" style="margin-right: 20px;"><b>MovieHunter</b> &copy; 2017 All rights reserved</span> <br>
                <small style="margin-left: 20px;">Developers:<br> Bernardo Camargo, Vitor Pratali, Lucas Occaso, Arthur Toledo</small>
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
            
           /* $.ajax({
                url: 'BuscaDiretores',
                type: 'POST',
                success: function () {
                   alert("DEU BOM NO AJAX");
                },
                error: function (e) {
                    alert("DEU RUIM NO AJAX");
                }
            });*/
            
            <%  
/*
    ResultadoDiretores res = (ResultadoDiretores)request.getAttribute("ResultadoDiretores");
    String tags = null;                    

    if(res == null){
        System.out.println("Resultado NULL");
    }
    else {
        System.out.println("NAO ENTROU");
        for (int i = 0 ; i < res.size() ; i++){
            tags = tags + "\"";
            tags = tags + ""+res.returnDiretor(i)+"";
            tags = tags + "\"";
            if(i != res.size())
                tags = tags + ", ";
        }

        System.out.println(tags);
    }*/
%>

            
      		$('#menu-ranking').click(function(event){
      			$('#menu-busca').parent().removeClass('active');
      			$(this).parent().addClass('active');
      			/*$('#buscar').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceOutRight animated').hide();    			
      			$('#ranking').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceInLeft animated').show();*/
      		});

      		$('#menu-busca').click(function(event){
      			$('#menu-ranking').parent().removeClass('active');
      			$(this).parent().addClass('active');
      			/*$('#buscar').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceInLeft animated').show();
      			$('#ranking').removeClass('wow bounceInLeft bounceOutRight animated').addClass('wow bounceOutRight animated').hide();*/
      		});


                /*$.post('BuscaDiretores', function(response){
                   $("#diretor").html(response);
                });*/

    		$('#diretor').tagit({
    			allowSpaces: true,
    			placeholderText: "Digite o nome do diretor",
    			availableTags: [],
    			autocomplete: {delay: 0, minLength: 2}
    		});
                
                
    	});
    </script>
  </body>
</html>
