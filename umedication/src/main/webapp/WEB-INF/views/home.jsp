<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE HTML>
<!--
	Linear by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>U-Medication</title>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900'
	rel='stylesheet' type='text/css'>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value="/resources/js/skel.min.js" />"></script>
<script src="<c:url value="/resources/js/skel-panels.min.js" />"></script>
<script src="<c:url value="/resources/js/init.js" />"></script>
<noscript>
	<link href="<c:url value="/resources/css/skel-noscript.css" />"
		rel="stylesheet">
	<link href="<c:url value="/resources/css/style.css" />"
		rel="stylesheet">
	<link href="<c:url value="/resources/css/style-desktop.css" />"
		rel="stylesheet">
</noscript>
</head>
<body class="homepage">

	<!-- Header -->
	<div id="header">
		<div id="nav-wrapper">
			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="active"><a href="index.html">Accueil</a></li>
					<li><a href="product.html">Produits</a></li>
					<li><a href="pharmacy.html">Pharmacie</a></li>
					<li><a href="no-sidebar.html">Trouver un médicament</a></li>
					<li><a href="no-sidebar.html">Questions</a></li>
					<li class="pro"><a href="no-sidebar.html">Accès
							professionnel</a></li>
				</ul>
			</nav>
		</div>
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="#">U-Medication</a>
				</h1>
				<span class="tag">Votre diagnostic en un clique !</span>
			</div>
		</div>
	</div>

	<!-- Featured -->
	<div id="featured">
		<div class="container">
			<header>
				<h2>
					Welcome to <span class="color-orange">U-Medication</span>
				</h2>
			</header>
			<hr />
			<div class="row">
				<section class="4u">
					<span class="pennant"><span class="fa fa-stethoscope"></span></span>
					<h3>Chaque maux a sa solution, nous en sommes convaincus !</h3>
					<p>Trouver les médicaments adaptés selon vos symptômes</p>
					<a href="#" class="button button-style1">Rechercher un
						mÃ©dicament</a>
				</section>
				<section class="4u">
					<span class="pennant"><span class="fa fa-ambulance"></span></span>
					<h3>
						Un médicament,<br /> une pharmacie !
					</h3>
					<p>Rechercher une pharmacie possédant votre médicament, et tout
						ça en un clique !</p>
					<a href="#" class="button button-style1">Voir plus</a>
				</section>
				<section class="4u">
					<span class="pennant"><span class="fa fa-user-md"></span></span>
					<h3>
						Nos professionnels vous<br /> répondent !
					</h3>
					<p>Une équipe de professionnel de la santé sont à disposition
						pour répondre à vos questions!</p>
					<a href="#" class="button button-style1">Accès au forum</a>
				</section>

			</div>
		</div>
	</div>

	<!-- Slideshow -->
	<div id="slider">
		<figure>
			<a href="symptomes.html"><img
				src="<c:url value="/resources/images/slider1.PNG" />" alt=""></a>
			<a href="http://www.urgo.fr/la-technologie-2/"><img
				src="<c:url value="/resources/images/slider2.PNG" />" alt=""></a>
			<a href=""><img
				src="<c:url value="/resources/images/slider3.PNG" />" alt=""></a>
			<a href=""><img
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
					Consulter <span class="color-orange">nos vidéos</span>
				</h2>
			</header>
			<hr />
			<div class="row video">
				<section class="4u">
					<iframe src="https://www.youtube.com/embed/aXglUVYz6rs"
						frameborder="0" allowfullscreen></iframe>
					<h3>
						Comment faire disparaître les<br /> boutons en toute discrétion ?
					</h3>
				</section>
				<section class="4u">
					<iframe src="https://www.youtube.com/embed/JoZvRqtdD-U"
						frameborder="0" allowfullscreen></iframe>
					<h3>
						Pourquoi les mannequins<br /> font-elles toujours la tête ?
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
					<a href="#" class="button button-style1">Voir plus de vidéos</a>
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
	<div id="footer">
		<div class="container">
			<section>
				<header>
					<h2>Tous vos maux méritent</h2>
					<span class="byline"><img
						src="<c:url value="/resources/images/urgo.png" />" /></span>
				</header>
				<ul class="contact">
					<li><a href="#" class="fa fa-facebook"><span>Facebook</span></a></li>
					<li><a href="#" class="fa fa-youtube"><span>Youtube</span></a></li>
				</ul>
			</section>
		</div>
	</div>

	<!-- Copyright -->
	<div id="copyright">
		<div class="container">
			<ul class="link-contact">
				<li><a href="contact.html">Contact</a></li>
				<li><a href="http://www.urgo.fr/">Site Urgo</a></li>
				<li>Agence BCGC</li>
			</ul>
		</div>
	</div>
</body>
</html>