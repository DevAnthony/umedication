<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<div id="header"  class="${activePage == 'home' ? '' : 'for-page'}">
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
					<li class="${param.activePage  == 'answers' ? 'active' : 'none'}"><a href="<c:url value="/doctor/answers" />">r�pondre</a></li>
					</sec:authorize>
					<li class="pro">
						<c:choose>
						<c:when test="${pageContext.request.userPrincipal.name != null}">

							<!-- csrt for log out-->
							<c:url value="/j_spring_security_logout" var="logoutUrl" />
							<form action="${logoutUrl}" method="post" id="logoutForm">
							  <input type="hidden" 
								name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							</form>
	
							<script>
								function formSubmit() { document.getElementById("logoutForm").submit(); }
							</script>
							<a href="javascript:formSubmit()"> Logout</a>	
						</c:when>
						<c:otherwise>
							<a href="<c:url value="/login" />"><spring:message code="link.professionalAccess.text" /></a>
						</c:otherwise>
						</c:choose>
					</li>
					
				</ul>
			</nav>
		</div>
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="<c:url value="/" />">U-Medication</a>
				</h1>
				<span class="tag"><c:out value="${empty fn:trim(param.tag) ? 'Votre diagnostic en un clique !' : param.tag}" /></span>
			</div>
		</div>
	</div>
