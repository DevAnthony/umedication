
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/resources/js/skel.min.js" var="skelMinJs" />
<spring:url value="/resources/js/skel-panels.min.js" var="skel-panelsMinJs" />
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
<script src="${skel-panelsMinJs}"></script>
<script src="${initJs}"></script>
<noscript>
	<link rel="stylesheet" href="${skel-noscript.css}" />
	<link rel="stylesheet" href="${styleCss}" />
	<link rel="stylesheet" href="${style-desktopCss}" />
</noscript>
</head>
<body class="homepage">

	<!-- Header -->
	<%@include file="header.jsp" %>
	<!-- Main -->
	<div id="main-product">
		<div id="content" class="container">
			<header>
				<h2>
					Trouvez une <span class="color-orange">pharmacie</span>
				</h2>
			</header>
			<hr />
			<div class="row-product">
				<section>
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d83998.75769432505!2d2.277517002953147!3d48.85895068114371!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e1f06e2b70f%3A0x40b82c3688c9460!2sParis!5e0!3m2!1sfr!2sfr!4v1458405513583"
						width="100%" height="530" frameborder="0" style="border: 0"
						allowfullscreen></iframe>
				</section>
				<section class="liste-pharma">
					<div>
						<ul>
							<li><img src="http://lorempixum.com/100/100/nature/1" />
								<h3>Pharmacie Bader</h3>
								<p>
									10-12 Boulevard Saint-Michel<br />01 43 26 92 66<br />
									<a href="http://www.pharmaciebader.com/" target="_blank">Site
										internet</a>
								</p></li>
							<li><img src="http://lorempixum.com/100/100/nature/2" />
								<h3>Universisté René Descartes - Paris V</h3>
								<p>
									4 Avenue de l'Observatoire<br />01 53 73 95 95<br />
									<a href="http://www.pharmacie.parisdescartes.fr/"
										target="_blank">Site internet</a>
								</p></li>
							<li><img src="http://lorempixum.com/100/100/nature/3" />
								<h3>Pharmacie de la Mairie</h3>
								<p>
									9 Rue des Archives<br />01 42 78 53 58<br />
									<a href="http://pharmacie-mairie-paris.com/" target="_blank">Site
										internet</a>
								</p></li>
							<li><img src="http://lorempixum.com/100/100/nature/4" />
								<h3>Paris-Pharma Sarl</h3>
								<p>
									143 Rue Manin<br />01 42 00 01 24<br />
									<a href="http://www.parispharma.com/" target="_blank">Site
										internet</a>
								</p></li>
							<li><img src="http://lorempixum.com/100/100/nature/4" />
								<h3>Paris-Pharma Sarl</h3>
								<p>
									143 Rue Manin<br />01 42 00 01 24<br />
									<a href="http://www.parispharma.com/" target="_blank">Site
										internet</a>
								</p></li>
						</ul>
					</div>
				</section>
			</div>
		</div>
	</div>

	<!-- Tweet -->
	<div id="tweet">
		<div class="container">
			<section>
				<blockquote>&ldquo;La maladie ne se guérit point en
					prononçant le nom du médicament, mais en prenant le
					médicament.&rdquo;</blockquote>
			</section>
		</div>
	</div>

	<!-- Footer -->
	<%@include file="footer.jsp" %>

	<!-- Copyright -->
	<%@include file="copyright.jsp" %>
</body>
</html>