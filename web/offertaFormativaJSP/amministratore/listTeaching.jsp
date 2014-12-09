<%-- 
    Document   : listTeaching
    Created on : 6-dic-2014, 13.25.32
    Author     : Alessandro
--%>

<%@page import="it.unisa.offerta_formativa.beans.Teaching"%>
<%@page import="it.unisa.offerta_formativa.beans.Department"%>
<%@page import="it.unisa.offerta_formativa.beans.Cycle"%>
<%@page import="java.util.ArrayList"%>
<%! ArrayList<Cycle> cycles;%>
<%! ArrayList<Department> departments;%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Xenon Boostrap Admin Panel" />
<meta name="author" content="" />

<title>DISTRA-MIT</title>

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Arimo:400,700,400italic">
<link rel="stylesheet" href="assets/css/fonts/linecons/css/linecons.css">
<link rel="stylesheet"
	href="assets/css/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/xenon-core.css">
<link rel="stylesheet" href="assets/css/xenon-forms.css">
<link rel="stylesheet" href="assets/css/xenon-components.css">
<link rel="stylesheet" href="assets/css/xenon-skins.css">
<link rel="stylesheet" href="assets/css/custom.css">

<script src="assets/js/jquery-1.11.1.min.js"></script>
<script>
	jQuery(document).ready(		
			function($) {
				/*bisogna metterla in ogni pagina*/
				$(window).on('beforeunload', function(e) {
					if (localStorage.getItem("rememberMeForLogin") == "no") {
						localStorage.removeItem("username");
						localStorage.removeItem("typology");
						localStorage.removeItem("primaryKey");

						localStorage.removeItem("offertaFormativa");
						localStorage.removeItem("gestioneTesi");
						localStorage.removeItem("gestioneTirocinio");
						localStorage.removeItem("dottorato");
						localStorage.removeItem("superAmministratore");
						window.location.href = "index.html";
					}
				});

				//quì ci vanno gli ID delle funzionalità che verranno messe all interno del menù laterale...basta copiare una riga e incollarla,
				//facendo attenzione a cambiare l'ID
				//Es: $("pippopaperino_"+localStorage.getItem("offertaFormativa")).empty();
				//ovviamente la localStorage cambia a seconda se si sta nella pagina di offerta formativa, gestione tesi, ecc...
				$(
						"#funzionalita1Permission_"
								+ localStorage.getItem("offertaFormativa"))
						.empty();
				$(
						"#funzionalita3Permission_"
								+ localStorage.getItem("offertaFormativa"))
						.empty();

				//if(localStorage.getItem("username")==null){
				//	window.location.replace("pageError.html");
				//}

				$("#spaceForUsername").html(
						localStorage.getItem("username") + ", "
								+ localStorage.getItem("primaryKey")
								+ ' <i class="fa-angle-down"></i>');

				$("#logout").click(function() {
					localStorage.removeItem("username");
					localStorage.removeItem("typology");
					localStorage.removeItem("primaryKey");
					window.location.href = "index.html";

					localStorage.removeItem("offertaFormativa");
					localStorage.removeItem("gestioneTesi");
					localStorage.removeItem("gestioneTirocinio");
					localStorage.removeItem("dottorato");
					localStorage.removeItem("superAmministratore");

				});
			});
</script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->


</head>
<body class="page-body">
    <% 	cycles = (ArrayList<Cycle>) request.getAttribute("cycles");
        departments = (ArrayList<Department>) request.getAttribute("departments");
        
    %>
	
	<nav class="navbar horizontal-menu navbar-fixed-top">
		<!-- set fixed position by adding class "navbar-fixed-top" -->

		<div class="navbar-inner">

			<!-- Navbar Brand -->
			<div class="navbar-brand">
				<a href="offertaFormativaStudente.html" class="logo"> <img
					src="assets/images/mitforsite.png" width="80" alt=""
					class="hidden-xs" /> <img src="assets/images/mitforsitemini.png"
					width="80" alt="" class="visible-xs" />
				</a>
			</div>

			<!-- Mobile Toggles Links -->
			<div class="nav navbar-mobile">

				<!-- This will toggle the mobile menu and will be visible only on mobile devices -->
				<div class="mobile-menu-toggle">

					<a href="#" data-toggle="user-info-menu-horizontal"> <i
						class="fa-key"></i>
					</a> <a href="#" data-toggle="mobile-menu-horizontal"> <i
						class="fa-bars"></i>
					</a>
				</div>
			</div>

			<div class="navbar-mobile-clear"></div>

			<!-- main menu -->

			<ul class="navbar-nav">
				<li class="opened active"><a
					href="offertaFormativaStudente.html"> <i
						class="linecons-desktop"></i> <span class="title">Offerta
							Formativa</span>
				</a></li>
				<li><a href="#"> <i class="linecons-graduation-cap"></i> <span
						class="title">Gestione Tesi</span>
				</a></li>
				<li><a href="#l"> <i class="linecons-megaphone"></i> <span
						class="title">Gestione Tirocinio</span>
				</a></li>
				<li><a href="#"> <i class="linecons-lightbulb"></i> <span
						class="title">Dottorato</span>
				</a></li>
				<li><a href="#"> <i class="linecons-globe"></i> <span
						class="title">Links</span>
				</a>
					<ul>
						<li><a href="http://www.magistralemit.unisa.it/"
							target="_blank"> <span class="title">DISTRA-MIT</span>
						</a></li>
						<li><a href="https://esse3web.unisa.it/unisa/Start.do"
							target="_blank"> <span class="title">Esse3</span>
						</a></li>
					</ul></li>
			</ul>
			<!-- notifications and other links -->
			<ul class="nav nav-userinfo navbar-right">
				<li class="dropdown user-profile"><a href="#"
					data-toggle="dropdown"> <img src="assets/images/user-1.png"
						alt="user-image" class="img-circle img-inline userpic-32"
						width="28" /> <span id="spaceForUsername"> </span>
				</a>

					<ul class="dropdown-menu user-profile-menu list-unstyled">
						<li><a href="#"> <i class="fa-edit"></i> Profilo
						</a></li>
						<li class="last"><a href="#" id="logout"> <i
								class="fa-lock"></i> Logout
						</a></li>
					</ul></li>
			</ul>

		</div>

	</nav>
	<div class="page-container">
		<!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->

		<!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
		<!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
		<!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->
		<div class="sidebar-menu toggle-others">
			<div class="sidebar-menu-inner">
				<ul id="main-menu" class="main-menu">
					<!-- add class "multiple-expanded" to allow multiple submenus to open -->
					<!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
					<li class="opened active"><a href="#"> <i
							class="linecons-cog"></i> <span class="title">Home</span>
					</a></li>
					<li id="funzionalita1Permission_0"><a href="#"> <i
							class="linecons-cog"></i> <span class="title">Funzionalit&agrave;
								01</span>
					</a></li>
					<li><a href="#"> <i class="linecons-note"></i> <span
							class="title">Funzionalit&agrave; 02</span>
					</a></li>
					<li id="funzionalita3Permission_0"><a href="#"> <i
							class="linecons-mail"></i> <span class="title">Funzionalit&agrave;
								03</span>
					</a>
						<ul>
							<li><a href="#"> <span class="title">INSERT</span>
							</a></li>
							<li><a href="#"> <span class="title">DELETE</span>
							</a></li>
							<li><a href="#"> <span class="title">VIEW</span>
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>

		<div class="main-content">

			<script>
				jQuery(document).ready(function($) {
					$('a[href="#layout-variants"]').on('click', function(ev) {
						ev.preventDefault();

						var win = {
							top : $(window).scrollTop(),
							toTop : $("#layout-variants").offset().top - 15
						};

						TweenLite.to(win, .3, {
							top : win.toTop,
							roundProps : [ "top" ],
							ease : Sine.easeInOut,
							onUpdate : function() {
								$(window).scrollTop(win.top);
							}
						});
					});
				});
			</script>

                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="panel panel-default col-sm-10 clearfix">
                                <!-- Default panel contents -->
                                <div class="panel-heading">Visualizza Insegnamenti</div>
                                <div class="panel-body ">
                                    <form action="" method="post" role="form" class="form-horizontal">
                                        <div class="row">
                                            <div class="col-sm-1"></div>
                                            <div class="form-group col-sm-4">
                                                <label for="department">Dipartimento:</label> 
                                                <select name="department" id="idDepartment" class="form-control">
                                                    <%
                                                        if (departments.size() != 0)
                                                            for (Department d : departments) {
                                                    %><option value=<%out.print(d.getAbbreviation());%>>
                                                        <%
                                                            out.print(d.getTitle());
                                                        %>
                                                    </option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="col-sm-1"></div>
                                            <div class="form-group col-sm-4">
                                                <label for="cycle">Ciclo:</label> 
                                                <select name="cycle" class="form-control" onchange="loadDegree(this.value);">
                                                    <option value=0>Seleziona il ciclo</option>
                                                    <%
                                                        if (cycles.size() != 0)
                                                            for (Cycle c : cycles) {
                                                    %><option value=<%out.print(c.getNumber());%>>
                                                        <%
                                                            out.print(c.getTitle());
                                                        %>
                                                    </option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-1"></div>
                                            <div class="form-group col-sm-4">
                                                <label for="degree">Corso di Laurea:</label> 
                                                <select name="degree" class="form-control" id="degree" onchange="loadCurriculum(this.value);">

                                                </select>
                                            </div>
                                            <div class="col-sm-1"></div>

                                            <div class="form-group col-sm-4">
                                                <label for="curriculum">Curriculum:</label> 
                                                <select name="curriculum" class="form-control" id="curriculum" onchange="loadTeaching(this.value);">

                                                </select>
                                            </div>

                                        </div>
                                        <div class="row">
                                                <table class="table-responsive col-sm-12" id="table" style="display: none;">
                                                    <thead>
                                                        <tr>
                                                            <th>Matricola</th>
                                                            <th>Nome</th>
                                                            <th>Abbreviazione</th>
                                                            <th>Link</th>
                                                            <th>Anno</th>
                                                            <th>Semestre</th>
                                                            <th></th><th></th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tablebody">
                                                    </tbody>
                                                </table>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-1"></div>
			</div>
			<!-- Main Footer -->
			<!-- Choose between footer styles: "footer-type-1" or "footer-type-2" -->
			<!-- Add class "sticky" to  always stick the footer to the end of page (if page contents is small) -->
			<!-- Or class "fixed" to  always fix the footer to the end of page -->
			<footer class="main-footer sticky footer-type-1">

				<div class="footer-inner">

					<!-- Add your copyright text here -->
					<div class="footer-text">
						&copy; 2014 <strong>Unisa</strong> <a href="http://www.unisa.it"
							target="_blank"></a>
					</div>


					<!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
					<div class="go-up">

						<a href="#" rel="go-top"> <i class="fa-angle-up"></i>
						</a>

					</div>

				</div>

			</footer>
		</div>

	</div>
	

	<div class="page-loading-overlay">
		<div class="loader-2"></div>
	</div>




	<!-- Bottom Scripts -->
	<script type="text/javascript">
	function loadDegree(i){
	    $.ajax({url:"GetDegreeServlet?idCycle="+i,success:function(result){
	    	$("#degree").html(result);
                
	    }});
	}
        function loadCurriculum(i){
	    $.ajax({url:"GetCurriculumServlet?degreeMatricula="+i,success:function(result){
	    	$("#curriculum").html(result);
                
	    }});
	}
        function loadTeaching(i){
            $.ajax({url:"GetTeachingServlet?curriculum="+i,success:function(result){
	    	$("#tablebody").html(result);
                $("#table").css("display","table");
	    }});
        }
	</script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/TweenMax.min.js"></script>
	<script src="assets/js/resizeable.js"></script>
	<script src="assets/js/joinable.js"></script>
	<script src="assets/js/xenon-api.js"></script>
	<script src="assets/js/xenon-toggles.js"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="assets/js/xenon-custom.js"></script>

</body>
</html>