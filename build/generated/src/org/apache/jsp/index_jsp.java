package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"pt-br\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"web/bootstrap-3.3.7-dist/css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"web/estilo.css\">\n");
      out.write("    <!-- As 3 meta tags acima *devem* vir em primeiro lugar dentro do `head`; qualquer outro conteÃºdo deve vir *apÃ³s* essas tags -->\n");
      out.write("    <title>Trabalhoweb</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->\n");
      out.write("    <!-- ALERTA: Respond.js nÃ£o funciona se vocÃª visualizar uma pÃ¡gina file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("  \t<div class=\"container-fluid\" style=\"height: 300px; background-image: url('img/background6.jpg'); background-position: bottom\">\n");
      out.write("  \t\t<div class=\"row\">\n");
      out.write("  \t\t\t<div class=\"col-md-12\" align=\"center\">\n");
      out.write("  \t\t\t\t<br><br><br>\n");
      out.write("  \t\t\t\t<h1 style=\"color: #fff;\">C&ensp;O&ensp;F&ensp;F&ensp;E&ensp;<br>T&ensp;I&ensp;M&ensp;E&ensp;</h1>\n");
      out.write("  \t\t\t</div>\n");
      out.write("  \t\t</div>\n");
      out.write("  \t</div>\n");
      out.write("\n");
      out.write("\t<nav class=\"navbar navbar-default\">\n");
      out.write("\t  <div class=\"container\">\n");
      out.write("\t    <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("\t    <div class=\"navbar-header\">\n");
      out.write("\t      <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n");
      out.write("\t        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t        <span class=\"icon-bar\"></span>\n");
      out.write("\t        <span class=\"icon-bar\"></span>\n");
      out.write("\t        <span class=\"icon-bar\"></span>\n");
      out.write("\t      </button>\n");
      out.write("\t      <a class=\"navbar-brand\" href=\"#\">CoffeTime</a>\n");
      out.write("\t    </div>\n");
      out.write("\n");
      out.write("\t    <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("\t    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("\t      <ul class=\"nav navbar-nav\">\n");
      out.write("\t        <li class=\"active\"><a href=\"#\"><span class=\"glyphicon glyphicon-search\"></span> Buscar filme</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\"><span class=\"glyphicon glyphicon-signal\"></span> Ranking</a></li>\n");
      out.write("\t      </ul>\n");
      out.write("\t      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t        <li><a href=\"#\" class=\"btn\">Sign In</a></li>\n");
      out.write("\t      </ul>\n");
      out.write("\n");
      out.write("\t    </div><!-- /.navbar-collapse -->\n");
      out.write("\t  </div><!-- /.container-fluid -->\n");
      out.write("\t</nav>\n");
      out.write("\n");
      out.write("\t<div class=\"wrapper container-fluid\">\n");
      out.write("\t\t<br><br>\n");
      out.write("\t\t<form id=\"form-busca\" action=\"doGet\" class=\"col-md-6 col-md-offset-3\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t<label for=\"titulo\">Título</label>\n");
      out.write("\t\t\t\t<input id=\"titulo\" name=\"titulo\" type=\"text\" class=\"form-control\">\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t<label for=\"diretor\">Diretor</label>\n");
      out.write("\t\t\t\t<input id=\"diretor\" name=\"diretor\" type=\"text\" class=\"form-control\">\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"text-center\">\n");
      out.write("\t\t\t\t<button class=\"btn btn-lg btn-primary\">\n");
      out.write("\t\t\t\t\t<span class=\"glyphicon glyphicon-search\"></span> Pesquisar\n");
      out.write("\t\t\t\t</button>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-md-3 form-group\">\n");
      out.write("\t\t\t\t\t<label for=\"limite\">Visualizar</label>\n");
      out.write("\t\t\t\t\t<select name=\"limite\" id=\"limite\" class=\"form-control\">\n");
      out.write("\t\t\t\t\t\t<option value=\"50\">50</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"100\">100</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"200\">200</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"500\">500</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"1000\">1000</option>\n");
      out.write("\t\t\t\t\t\t<option value=\"all\">Todos</option>\n");
      out.write("\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</form>\n");
      out.write("                \n");
      out.write("                ");

                    ResultadoBusca res = (ResultadoBusca)request.getAttribute("ResultadoBusca");
                    if(res == null) {}
                
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<div id=\"resultado\" class=\"col-md-6 col-md-offset-3\">\n");
      out.write("                    ");
for (int i = 0 ; i < res.size() ; i++){
      out.write("\n");
      out.write("\t\t\t<div class=\"filme-container\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t");

                                        out.println("<tr>" + res.returnMovie(i) + res.returnDirector(i) + "</tr>");
                                
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<footer>Desenvolvimento Web 2017</footer>\n");
      out.write("    <!-- jQuery (obrigatÃ³rio para plugins JavaScript do Bootstrap) -->\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("    <!-- Inclui todos os plugins compilados (abaixo), ou inclua arquivos separadados se necessÃ¡rio -->\n");
      out.write("    <script src=\"web/bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
