<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
