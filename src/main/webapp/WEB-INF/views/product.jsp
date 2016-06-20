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
        <jsp:param name="activePage" value="products"/>
        <jsp:param name="tag" value="Votre médicament en un clique !"/>
    </jsp:include>
	<!-- Main -->
	<div id="main-product">
		<div id="content" class="container">
			<header>
				<h2>
					Produits : <span class="color-orange">${product.name}</span>
				</h2>
				<p>Emulsion pour application cutanee</p>
			</header>
			<hr />
			<div class="row-product">
				<section>
					<a href="#" class="image full"><img src="<c:url value="/resources/images/medicaments/${product.id}.jpg" />"
						alt=""></a> <a
						href="http://www.pharmanco.com/Achat-medicament-en-ligne"
						target="_blank"><button class="btn btn-default" type="button">Acheter
							en ligne</button></a>
				</section>
				<section>
					<div class="accordion">
						<div id="tab-1">
							<a href="#tab-1" class="tab">Indications thérapeutiques</a>
							<div class="content">
								${product.indications}
							</div>
						</div>
						<div id="tab-2">
							<a href="#tab-2" class="tab">Présentation</a>
							<div class="content">
								<ul>
									<li><span>»</span> ${product.presentation}</li>
									<li><span>»</span>${product.laboratory}</li>
								</ul>
							</div>
						</div>
						<div id="tab-3">
							<a href="#tab-3" class="tab">Mode d'administration</a>
							<div class="content">
									 ${product.administration}
							</div>
						</div>
						<div id="tab-4">
							<a href="#tab-4" class="tab">Conservation</a>
							<div class="content">
									 ${product.conservation}
							</div>
						</div>
<!-- 						<div id="tab-5">
							<a href="#tab-5" class="tab">Groupe(s) générique(s)</a>
							<div class="content">
								<ul>
									<li>Ce médicament appartient au(x) groupe(s) générique(s)
										suivants :</li>
									<li><span>»</span> TROLAMINE 0,67 % - BIAFINE, émulsion
										pour application cutanée.</li>
								</ul>
							</div>
						</div>
 -->
						<div id="tab-6">
							<a href="#tab-6" class="tab">Effets indésirables possibles du
								médicament BIAFINE</a>
							<div class="content">
									 ${product.sideEffects}
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>

	<!-- Other product -->
	<div id="other">
		<div class="container">
			<header>
				<h2>
					Autres <span class="color-orange">Produits</span>
				</h2>
			</header>
			<hr />
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
						src="<c:url value="/resources/images/actifed.jpg" />" alt=""></a>
					<header>
						<h2>Actifed</h2>
					</header>
					<p>In posuere eleifend odio. Quisque semper augue mattis wisi.
						Maecenas ligula.</p>
				</section>
				<section class="6u">
					<a href="<c:url value="/product/3" />" class="image full"><img
						src="<c:url value="/resources/images/drill.jpg" />" alt=""></a>
					<header>
						<h2>Drill</h2>
					</header>
					<p>In posuere eleifend odio.</p>
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