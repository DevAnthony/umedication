<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<spring:url value="/resources/js/skel.min.js" var="skelMinJs" />
<spring:url value="/resources/js/skel-panels.min.js" var="skelPanelsMinJs" />
<spring:url value="/resources/js/init.js" var="initJs" />
<spring:url value="/resources/css/skel-noscript.css" var="skel-noscript.css" />
<spring:url value="/resources/css/style.css" var="styleCss" />
<spring:url value="/resources/css/style-desktop.css" var="style-desktopCss" />
<spring:url value="/question/add" var="addQuestionUrl" />

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
        <jsp:param name="activePage" value="questions"/>
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
						    	
									<button class="accordion">${question.message}</button>
									<div class="panel">
									  <p>Lorem ipsum...</p>
									</div>
						    	</c:forEach>
							</div>
					    </c:forEach>

						<button class="accordion">Section 2</button>
						<div class="panel">
						  <p>Lorem ipsum...</p>
						</div>

						<button class="accordion">Section 3</button>
						<div class="panel">
						  <p>Lorem ipsum...</p>
						</div>
					</section>			
				</div>
			</div>
		</div>

	<!-- Other product -->
		<div id="other">
			<div class="container">
				<header>
					<h2>Contactez les<span class="color-orange"> médecins URGO</span></h2>
					<p>Posez vos questions et nos médecins agréés vous répondent !</p>
				</header>
				<hr />
				<div class="form-style-8">
				  <h2>Remplisser le formulaire ci-dessous</h2>
					<form:form method="post" modelAttribute="questionForm" action="${addQuestionUrl}">
						<form:input type="text" path="asker" placeholder="Pseudo*" /> 
						<form:errors path="asker" />
						<form:input type="email" path="asker_mail" placeholder="Email*" /> 
						<form:errors path="asker_mail" />
						<form:input type="text" path="subject" placeholder="Sujet*" />
						<form:errors path="subject" />
						<form:textarea path="message" placeholder="Message*"/>
						<form:errors path="message" />
						
						<form:select path="category.id" id="soflow">
							<form:options items="${categories}" itemValue="id" itemLabel="wording"></form:options>
						</form:select>
						<button type="submit" class="button"><spring:message code="send" /></button>
					</form:form>
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