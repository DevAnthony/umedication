<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
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
        <jsp:param name="activePage" value="home"/>
        <jsp:param name="tag" value="${context.getMessage('tag.home')}"/>
    </jsp:include>
	<!-- Featured -->
	<div id="featured">
		<div class="container">
			<header>
				<h2>
					<spring:message code="welcomeTo" />&nbsp;<span class="color-orange">U-Medication</span>
				</h2>
			</header>
			<hr />
			<div class="row">
				<section class="4u">
					<span class="pennant"><span class="fa fa-stethoscope"></span></span>
					<h3>Chaque maux a sa solution, nous en sommes convaincus !</h3>
					<p>Trouver les m�dicaments adapt�s selon vos sympt�mes</p>
					<a href="#" class="button button-style1">Rechercher un
						m�dicament</a>
				</section>
				<section class="4u">
					<span class="pennant"><span class="fa fa-ambulance"></span></span>
					<h3>
						Un m�dicament,<br /> une pharmacie !
					</h3>
					<p>Rechercher une pharmacie poss�dant votre m�dicament, et tout
						�a en un clique !</p>
					<a href="<c:url value="/pharmacy" />" class="button button-style1">Voir plus</a>
				</section>
				<section class="4u">
					<span class="pennant"><span class="fa fa-user-md"></span></span>
					<h3>
						Nos professionnels vous<br /> r�pondent !
					</h3>
					<p>Une �quipe de professionnel de la sant� sont � disposition
						pour r�pondre � vos questions!</p>
					<a href="<c:url value="/questions" />" class="button button-style1">Acc�s au forum</a>
				</section>

			</div>
		</div>
	</div>

	<!-- Slideshow -->
	<div id="slider">
		<figure>
			<a href="<c:url value="/diagnostic" />"><img
				src="<c:url value="/resources/images/slider1.PNG" />" alt=""></a>
			<a href="http://www.urgo.fr/la-technologie-2/"><img
				src="<c:url value="/resources/images/slider2.PNG" />" alt=""></a>
			<a href="#"><img
				src="<c:url value="/resources/images/slider3.PNG" />" alt=""></a>
			<a href="#"><img
				src="<c:url value="/resources/images/slider4.PNG" />" alt=""></a>
			<a
				href="http://www.urgo.fr/la-bonne-resolution-on-se-remet-au-sport/"><img
				src="<c:url value="/resources/images/slider5.PNG" />" alt=""></a>
		</figure>
	</div>

	<!-- Featured -->
	<div id="featured">
		<div class="container">
			<header>
				<h2>
					Consulter <span class="color-orange">nos vid�os</span>
				</h2>
			</header>
			<hr />
			<div class="row video">
				<section class="4u">
					<iframe src="https://www.youtube.com/embed/aXglUVYz6rs"
						frameborder="0" allowfullscreen></iframe>
					<h3>
						Comment faire dispara�tre les<br /> boutons en toute discr�tion ?
					</h3>
				</section>
				<section class="4u">
					<iframe src="https://www.youtube.com/embed/JoZvRqtdD-U"
						frameborder="0" allowfullscreen></iframe>
					<h3>
						Pourquoi les mannequins<br /> font-elles toujours la t�te ?
					</h3>
				</section>
				<section class="4u">
					<iframe src="https://www.youtube.com/embed/Vda3eyQ-Jc0"
						frameborder="0" allowfullscreen></iframe>
					<h3>
						Pourquoi les gardes anglais<br /> ne parlent-ils jamais ?
					</h3>
				</section>
				<section class="bouton-video">
					<a target="_blank" href="https://www.youtube.com/user/URGO21" class="button button-style1">Voir plus de vid�os</a>
				</section>
			</div>
		</div>
	</div>


	<!-- Tweet -->
	<div id="tweet">
		<div class="container">
			<section>
				<blockquote>&ldquo;<spring:message code="tweet" />&rdquo;</blockquote>
			</section>
		</div>
	</div>

	<!-- Footer -->
	<%@include file="footer.jsp" %>
	<!-- Copyright -->
	<%@include file="copyright.jsp" %>
</body>
</html>