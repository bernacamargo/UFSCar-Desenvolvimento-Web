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
    <link rel="stylesheet" href="web/plugins/bootstrap-datepicker-master/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="web/estilo.css">
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">

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
	        <li ><a id="menu-busca" href="index.jsp"><span class="glyphicon glyphicon-search"></span> Procurar</a></li>
                <li class="active"><a id="menu-ranking" href="ranking.jsp"><i class="fa fa-star"></i> Ranking</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	      </ul>

	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>


	<div id="ranking" class="wrapper container-fluid">
		<br><br>
		<div class="">
                    <h1 class="text-center" >R&ensp;A&ensp;N&ensp;K&ensp;I&ensp;N&ensp;G</h1>
                    <hr>
                    <h4 class='text-muted' style="text-align: center;">Classificação dos atores que possuem maior número de filmes por gênero</h4>

		</div><br><br>

		<form id="form-ranking" action="Ranking" method="GET" id="" class="form-busca col-md-8 col-md-offset-2">
                    <br>
                    <div class="row">
			<div class="col-md-4 form-group">
				<select name="genero" id="" class="form-control input-lg" required>
                                    <option value="" hidden>Selecione um gênero</option>
                                    <option value="Action">Action</option>
                                    <option value="Adult">Adult</option>
                                    <option value="Adventure">Adventure</option>
                                    <option value="Animation">Animation</option>
                                    <option value="Biography">Biography</option>
                                    <option value="Comedy">Comedy</option>
                                    <option value="Crime">Crime</option>
                                    <option value="Documentary">Documentary</option>
                                    <option value="Drama">Drama</option>
                                    <option value="Family">Family</option>
                                    <option value="Fantasy">Fantasy</option>
                                    <option value="Film-Noir">Film-Noir</option>
                                    <option value="Game-Show">Game-Show</option>
                                    <option value="History">History</option>
                                    <option value="Horror">Horror</option>
                                    <option value="Lifestyle">Lifestyle</option>
                                    <option value="Music">Music</option>
                                    <option value="Musical">Musical</option>
                                    <option value="Mystery">Mystery</option>
                                    <option value="News">News</option>
                                    <option value="Reality-TV">Reality-TV</option>
                                    <option value="Romance">Romance</option>
                                    <option value="Sci-Fi">Sci-Fi</option>
                                    <option value="Short">Short</option>
                                    <option value="Sport">Sport</option>
                                    <option value="Talk-Show">Talk-Show</option>
                                    <option value="Thriller">Thriller</option>
                                    <option value="War">War</option>
                                    <option value="Western">Western</option>
				</select>
			</div>
                        
                        <div class="col-md-1 form-group">
                            <input onfocus="$('#data_inicio').focus();" type="number" value="De" readonly class="form-control input-lg" style="padding-left: 4px; background: transparent; border: none; box-shadow: none;"/>
                        </div>
                        
                        <div class="col-md-3 form-group">
                            <input type="text" name="data_inicio" id="data_inicio" class="data form-control input-lg" placeholder="Exemplo: 1975">
                        </div>
                        
                        <div class="col-md-1 form-group">
                            <input onfocus="$('#data_fim').focus();" type="number" value="Até" readonly class="form-control input-lg" style="padding-left: 0; background: transparent; border: none; box-shadow: none;"/>
                        </div>
                        
                        <div class="col-md-3 form-group">
                             <input type="text" name="data_fim" id="data_fim" class="data form-control input-lg" placeholder="Exemplo: 2008">
                        </div>
                    
                        <div class="text-center col-md-12">
                            <br><br><br>
				<button class="btn btn-lg btn-primary">
					<i class="fa fa-star"></i> Ver ranking <i class="fa fa-star"></i>
				</button>
			</div>
                        
			
		</form>
            </div>                
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
    <script src="web/plugins/bootstrap-datepicker-master/dist/css/bootstrap-datepicker.min.js"></script>

    <script type="text/javascript">
    	$(document).ready(function() {
                        
      		$('#menu-ranking').click(function(event){
      			$('#menu-busca').parent().removeClass('active');
      			$(this).parent().addClass('active');
      		});

      		$('#menu-busca').click(function(event){
      			$('#menu-ranking').parent().removeClass('active');
      			$(this).parent().addClass('active');
      		});
                
                $('#form-ranking').submit(function(event){
                                        
                    if($("#data_fim").val() === "" || $("#data_inicio").val() === "" || $("#data_fim").val() >= $("#data_inicio").val()){
                        event.submit();
                    }                    
                    else if($("#data_fim").val() < $("#data_inicio").val()){
                        event.preventDefault();                    
                        alert("O ano de inicio deve ser menor que o ano final");
                    }

                });
                
                $('#data_inicio').outfocus(function(){
                    $("#data_fim").attr("min", $(this).val());
                });
                
                $('#data_fim').outfocus(function(){
                    $("#data_inicio").attr("max", $(this).val());
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
