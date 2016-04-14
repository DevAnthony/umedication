<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	<%@include file="header.jsp" %>

	<!-- Main -->
	<div id="main">
		<div id="content" class="container">
			<header>
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Chercher un produit...">
					<button class="btn btn-default" type="button">Chercher</button>
				</div>
			</header>

			<div class="row">
				<section class="6u">
					<a href="<c:url value="/product/1" />" class="image full"><img
						src="<c:url value="/resources/images/biafine.jpg" />" alt=""></a>
					<header>
						<h2>Biafine</h2>
					</header>
					<p>Emulsion pour application cutanee</p>
				</section>
				<section class="6u">
					<a href="<c:url value="/product/2" />" class="image full"><img
						src="<c:url value="/resources/images/drill.jpg" />" alt=""></a>
					<header>
						<h2>Drill</h2>
					</header>
					<p>In posuere eleifend odio.</p>
				</section>
				<section class="6u">
					<a href="<c:url value="/product/3" />" class="image full"><img
						src="<c:url value="/resources/images/actifed.jpg" />" alt=""></a>
					<header>
						<h2>Actifed</h2>
					</header>
					<p>In posuere eleifend odio. Quisque semper augue mattis wisi.
						Maecenas ligula.</p>
				</section>
				<section class="6u">
					<a href="<c:url value="/product/4" />" class="image full"><img
						src="<c:url value="/resources/images/rhinadvil.jpg" />" alt=""></a>
					<header>
						<h2>Rhinadvil</h2>
					</header>
					<p>In posuere eleifend odio. Quisque semper augue mattis wisi.</p>
				</section>
			</div>

			<div class="row">
				<section class="6u">
					<a href="<c:url value="/product/1" />" class="image full"><img src="<c:url value="/resources/images/biafine.jpg" />"
						alt=""></a>
					<header>
						<h2>Mauris vulputate dolor</h2>
					</header>
					<p>In posuere eleifend odio. Quisque semper augue mattis wisi.</p>
				</section>
				<section class="6u">
					<a href="<c:url value="/product/2" />" class="image full"><img src="<c:url value="/resources/images/drill.jpg" />"
						alt=""></a>
					<header>
						<h2>Mauris vulputate dolor</h2>
					</header>
					<p>In posuere eleifend odio. Quisque semper augue mattis wisi.
						Maecenas ligula.</p>
				</section>
				<section class="6u">
					<a href="<c:url value="/product/3" />" class="image full"><img src="<c:url value="/resources/images/actifed.jpg" />"
						alt=""></a>
					<header>
						<h2>Mauris vulputate dolor</h2>
					</header>
					<p>In posuere eleifend odio. Quisque semper augue mattis wisi.</p>
				</section>
				<section class="6u">
					<a href="<c:url value="/product/4" />" class="image full"><img src="<c:url value="/resources/images/rhinadvil.jpg" />"
						alt=""></a>
					<header>
						<h2>Mauris vulputate dolor</h2>
					</header>
					<p>In posuere eleifend odio. Quisque semper augue mattis wisi.
						Maecenas ligula.</p>
				</section>
			</div>
			<div class="row-pagination">
				<ul id="pagination">
					<li><a class="actuel">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
				</ul>
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