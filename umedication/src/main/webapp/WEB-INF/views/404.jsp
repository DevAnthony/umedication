<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
<body>
<body>

	<!-- Header -->
	<div id="header"  class="for-page">
		<div id="nav-wrapper">
			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="${param.activePage == 'home' ? 'active' : ''}"><a href="<c:url value="/" />"><spring:message code="link.home.text" /></a></li>
					<li class="${param.activePage  == 'products' ? 'active' : ''}"><a href="<c:url value="/products" />"><spring:message code="link.products.text" /></a></li>
					<li class="${param.activePage  == 'pharmacy' ? 'active' : 'none'}"><a href="<c:url value="/pharmacy" />"><spring:message code="link.pharmacy.text" /></a></li>
					<li class="${param.activePage  == 'diagnostic' ? 'active' : 'none'}"><a href="#"><spring:message code="link.diagnostic.text" /></a></li>
					<li class="${param.activePage  == 'questions' ? 'active' : 'none'}"><a href="<c:url value="/questions" />"><spring:message code="link.questions.text" /></a></li>
					
					<sec:authorize access="hasRole('ROLE_DOCTOR')">
					<li class="${param.activePage  == 'reponses' ? 'active' : 'none'}"><a href="<c:url value="/doctor/repondre" />">répondre</a></li>
					</sec:authorize>
					<li class="pro">
						<c:choose>
						<c:when test="${pageContext.request.userPrincipal.name != null}">
							<a href="<c:url value="/j_spring_security_logout" />"> Logout</a>
						</c:when>
						<c:otherwise>
							<a href="<c:url value="/login" />"><spring:message code="link.professionalAccess.text" /></a>
						</c:otherwise>
						</c:choose>
					</li>
					
				</ul>
			</nav>
		</div>
		<div>

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="#">404</a>
				</h1>
				<span class="tag"><spring:message code="error.404" /></span>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@include file="footer.jsp" %>

	<!-- Copyright -->
	<%@include file="copyright.jsp" %>
</body>
</html>