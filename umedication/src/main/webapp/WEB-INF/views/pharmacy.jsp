
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/resources/js/skel.min.js" var="skelMinJs" />
<spring:url value="/resources/js/skel-panels.min.js" var="skelPanelsMinJs" />
<spring:url value="/resources/js/init.js" var="initJs" />
<spring:url value="/resources/js/pharmacy.js" var="pharmacyJs" />
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
<script src="https://maps.googleapis.com/maps/api/js?libraries=places"></script>
<script src="${skelMinJs}"></script>
<script src="${skelPanelsMinJs}"></script>
<script src="${initJs}"></script>
<script src="${pharmacyJs}"></script>
<noscript>
	<link rel="stylesheet" href="${skel-noscript.css}" />
	<link rel="stylesheet" href="${styleCss}" />
	<link rel="stylesheet" href="${style-desktopCss}" />
</noscript>
</head>
<body class="homepage">

	<!-- Header -->
    <jsp:include page="header.jsp">
        <jsp:param name="activePage" value="pharmacy"/>
        <jsp:param name="tag" value="Trouver une pharmacie en un clique !"/>
    </jsp:include>
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
					<div id="map" style="width:100%;height:530px;"></div>
				</section>
				<section class="liste-pharma">
					<div>
						<ul id="list_pharmacy">
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