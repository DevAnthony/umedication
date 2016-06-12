<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<spring:url value="/resources/js/skel.min.js" var="skelMinJs" />
<spring:url value="/resources/js/skel-panels.min.js" var="skelPanelsMinJs" />
<spring:url value="/resources/js/init.js" var="initJs" />
<spring:url value="/resources/css/skel-noscript.css" var="skel-noscript.css" />
<spring:url value="/resources/css/style.css" var="styleCss" />
<spring:url value="/resources/css/style-desktop.css" var="style-desktopCss" />
<spring:url value="/doctor/answer/add" var="addAnswerUrl" />

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
        <jsp:param name="activePage" value="answers"/>
        <jsp:param name="tag" value="${context.getMessage('tag.home')}"/>
    </jsp:include>
	<!-- Main -->
		<div id="main-product">
			<div id="content" class="container">
				<header>
					<h2>Questions / <span class="color-orange">Réponses</span></h2>
					<p>Retrouvez toutes les questions sur l'auto-médication.</p>
				</header>
				<hr />
				<div class="row-product questions">
					<section>
					    <c:forEach items="${questionsListMap}" var="questionsList">
							<button class="accordion">${questionsList.key.wording}</button>
							<div class="panel">
						    	<c:forEach items="${questionsList.value}" var="question">
						    	
									<button class="accordion">${question.subject}</button>
									<div class="panel">
										<p>${question.message}</p>
										<form:form method="post" modelAttribute="answerForm" action="${addAnswerUrl}">
										
											<form:textarea path="message" placeholder="Message*"/>
											<form:errors path="message" />
											
  											<form:input type="hidden" path="question.id"   value="${question.id}"/>
											<button type="submit" class="button"><spring:message code="answer" /></button>
										</form:form>
									</div>
						    	</c:forEach>
							</div>
					    </c:forEach>
					</section>			
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
	</body>
</html>