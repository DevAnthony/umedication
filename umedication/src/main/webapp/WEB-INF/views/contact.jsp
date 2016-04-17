<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url value="/resources/js/skel.min.js" var="skelMinJs" />
<spring:url value="/resources/js/skel-panels.min.js" var="skelPanelsMinJs" />
<spring:url value="/resources/js/init.js" var="initJs" />
<spring:url value="/resources/css/skel-noscript.css" var="skel-noscript.css" />
<spring:url value="/resources/css/style.css" var="styleCss" />
<spring:url value="/resources/css/style-desktop.css" var="style-desktopCss" />
<spring:url value="/contact" var="userActionUrl" />

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
        <jsp:param name="activePage" value="contact"/>
        <jsp:param name="tag" value="Contactez nous!"/>
    </jsp:include>
	
	<!-- Main -->
	<div id="main-product">
		<div id="content" class="container">
			<header>
				<h2>
					Contactez un <span class="color-orange">professionnel de
						santé</span>
				</h2>
			</header>
			<hr />
			<div class="form-style-8">
				<h2>Remplisser le formulaire ci-dessous</h2>
				<form:form method="post" modelAttribute="contactForm" action="${userActionUrl}">
					<form:input type="text" path="name" placeholder="Nom complet*" /> 
					<form:errors path="name" />
					<form:input type="email" path="email" placeholder="Email*" /> 
					<form:errors path="email" />
					<form:input type="text" path="subject" placeholder="Sujet*" />
					<form:errors path="subject" />
					<form:textarea path="message" placeholder="Message*"/>
					<form:errors path="message" />
			     <button type="submit" class="button"><spring:message code="send" />
                             </button>
				</form:form>
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