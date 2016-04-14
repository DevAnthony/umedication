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
					Produits : <span class="color-orange">Biafine</span>
				</h2>
				<p>Emulsion pour application cutanee</p>
			</header>
			<hr />
			<div class="row-product">
				<section>
					<a href="#" class="image full"><img src="<c:url value="/resources/images/biafine.jpg" />"
						alt=""></a> <a
						href="http://www.pharmanco.com/Achat-medicament-en-ligne"
						target="_blank"><button class="btn btn-default" type="button">Acheter
							en ligne</button></a>
				</section>
				<section>
					<div class="accordion">
						<div id="tab-1">
							<a href="#tab-1" class="tab">Indications th�rapeutiques</a>
							<div class="content">
								<ul>
									<li><span>�</span> Eryth�mes secondaires � des traitements
										radioth�rapiques.</li>
									<li><span>�</span> Br�lures du premier et du second degr�
										et toute autre plaie cutan�e non infect�e.</li>
								</ul>
							</div>
						</div>
						<div id="tab-2">
							<a href="#tab-2" class="tab">Pr�sentation</a>
							<div class="content">
								<ul>
									<li><span>�</span> Emulsion</li>
									<li><span>�</span> Laboratoire johnson et johnson consumer
										france sas</li>
								</ul>
							</div>
						</div>
						<div id="tab-3">
							<a href="#tab-3" class="tab">Mode d'administration</a>
							<div class="content">
								<ul>
									<li><span>�</span> Voie d'administration : Cutan�e</li>
									<li><span>�</span> Utiliser en massage</li>
									<li><span>�</span> Appliquer sur la zone � traiter</li>
									<li><span>�</span> Appliquer en couche �paisse</li>
									<li><span>�</span> Appliquer en couche mince</li>
									<li><span>�</span> Respecter les modalit�s
										d'administration</li>
								</ul>
							</div>
						</div>
						<div id="tab-4">
							<a href="#tab-4" class="tab">Conservation</a>
							<div class="content">
								<ul>
									<li><span>�</span> 36 mois</li>
									<li><span>�</span> A temperature ambiante</li>
									<li><span>�</span> A l'abri du gel (inf�rieur � 0�)</li>
								</ul>
							</div>
						</div>
						<div id="tab-5">
							<a href="#tab-5" class="tab">Groupe(s) g�n�rique(s)</a>
							<div class="content">
								<ul>
									<li>Ce m�dicament appartient au(x) groupe(s) g�n�rique(s)
										suivants :</li>
									<li><span>�</span> TROLAMINE 0,67 % - BIAFINE, �mulsion
										pour application cutan�e.</li>
								</ul>
							</div>
						</div>
						<div id="tab-6">
							<a href="#tab-6" class="tab">Effets ind�sirables possibles du
								m�dicament BIAFINE</a>
							<div class="content">
								<ul>
									<li><span>�</span> Picotements passagers apr�s
										l'application.</li>
									<li><span>�</span> Rarement : r�action allergique cutan�e
										(ecz�ma de contact), n�cessitant l'arr�t du traitement.</li>
								</ul>
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
					<a href="myproduct.html" class="image full"><img
						src="<c:url value="/resources/images/biafine.jpg" />" alt=""></a>
					<header>
						<h2>Biafine</h2>
					</header>
					<p>Emulsion pour application cutanee</p>
				</section>
				<section class="6u">
					<a href="myproduct.html" class="image full"><img
						src="<c:url value="/resources/images/drill.jpg" />" alt=""></a>
					<header>
						<h2>Drill</h2>
					</header>
					<p>In posuere eleifend odio.</p>
				</section>
				<section class="6u">
					<a href="myproduct.html" class="image full"><img
						src="<c:url value="/resources/images/actifed.jpg" />" alt=""></a>
					<header>
						<h2>Actifed</h2>
					</header>
					<p>In posuere eleifend odio. Quisque semper augue mattis wisi.
						Maecenas ligula.</p>
				</section>
				<section class="6u">
					<a href="myproduct.html" class="image full"><img
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
				<blockquote>&ldquo;La maladie ne se gu�rit point en
					pronon�ant le nom du m�dicament, mais en prenant le
					m�dicament.&rdquo;</blockquote>
			</section>
		</div>
	</div>


	<!-- Footer -->
	<%@include file="footer.jsp" %>

	<!-- Copyright -->
	<%@include file="copyright.jsp" %>
</body>
</html>