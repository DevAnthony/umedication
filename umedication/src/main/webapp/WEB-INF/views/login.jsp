<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url value="/resources/js/skel.min.js" var="skelMinJs" />
<spring:url value="/resources/js/skel-panels.min.js" var="skelPanelsMinJs" />
<spring:url value="/resources/js/init.js" var="initJs" />
<spring:url value="/resources/css/skel-noscript.css" var="skel-noscript.css" />
<spring:url value="/resources/css/style.css" var="styleCss" />
<spring:url value="/resources/css/style-desktop.css" var="style-desktopCss" />
<!DOCTYPE HTML>
<!--
	Linear by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>U-Medication</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900'
	rel='stylesheet' type='text/css'>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="${skelMinJs}"></script>
<script src="${skelPanelsMinJs}"></script>
<script src="${initJs}"></script>
<noscript>
	<link rel="stylesheet" href="${skel-noscript.css}" />
	<link rel="stylesheet" href="${styleCss}" />
	<link rel="stylesheet" href="${style-desktopCss}" />
</noscript>
</head>
	<body class="homepage">

	<!-- Header -->
    <jsp:include page="header.jsp">
        <jsp:param name="tag" value="Votre médicament en un clique !"/>
    </jsp:include>
	<!-- Main -->
		<div id="main-product">
			<div id="content" class="container">
				<header>
					<h2>Accès côté<span class="color-orange"> professionnel de santé</span></h2>
					<p>Plateforme réservée exclusivement aux professionnels de santé URGO.</p>
				</header>
				<hr />
				<div class="row-product mylogin">
					<form class="login" action="<c:url value='j_spring_security_check' />" method='POST'>
					  <fieldset>
					    
					  	<legend class="legend">Login</legend>
					    
					    <div class="input">
					    	<input type="text" placeholder="username" name="username" required />
					      <span><i class="fa fa-envelope-o"></i></span>
					    </div>
					    
					    <div class="input">
					    	<input type="password" placeholder="Password" name="password"  required />
					      <span><i class="fa fa-lock"></i></span>
					    </div>
					    
					    <button type="submit" class="submit"><i class="fa fa-long-arrow-right"></i></button>
					    
					  </fieldset>
					  
					  <div class="feedback">
					  	login successful
					  </div>
					  
					</form>	


				</div>
			</div>
		</div>

	<!-- Tweet -->
		<div id="tweet">
			<div class="container">
				<section>
					<blockquote>&ldquo;La maladie ne se guérit point en prononçant le nom du médicament, mais en prenant le médicament.&rdquo;</blockquote>
				</section>
			</div>
		</div>


	<!-- Footer -->
	<%@include file="footer.jsp" %>

	<!-- Copyright -->
	<%@include file="copyright.jsp" %>
	
<script>
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
	    acc[i].onclick = function(){
	        this.classList.toggle("active");
	        this.nextElementSibling.classList.toggle("show");
	    }
	}
</script>

<script>
	$( ".input" ).focusin(function() {
	  $( this ).find( "span" ).animate({"opacity":"0"}, 200);
	});

	$( ".input" ).focusout(function() {
	  $( this ).find( "span" ).animate({"opacity":"1"}, 300);
	});

	$(".login").submit(function(){
	  $(this).find(".submit i").removeAttr('class').addClass("fa fa-check").css({"color":"#fff"});
	  //$(".submit").css({"background":"#2ecc71", "border-color":"#2ecc71"});
	  //$(".feedback").show().animate({"opacity":"1", "bottom":"-80px"}, 400);
	  //$("input").css({"border-color":"#2ecc71"});
	});
</script>
	</body>
</html>