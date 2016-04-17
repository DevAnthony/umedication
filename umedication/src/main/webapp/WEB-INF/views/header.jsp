<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
${request.paramValues}
	<div id="header"  class="${activePage == 'home' ? '' : 'for-page'}">
		<div id="nav-wrapper">
			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="${param.activePage == 'home' ? 'active' : ''}"><a href="<c:url value="/" />">Accueil</a></li>
					<li class="${param.activePage  == 'products' ? 'active' : ''}"><a href="<c:url value="/products" />">Produits</a></li>
					<li class="${param.activePage  == 'pharmacy' ? 'active' : 'none'}"><a href="<c:url value="/pharmacy" />">Pharmacie</a></li>
					<li class="${param.activePage  == 'diagnostic' ? 'active' : 'none'}"><a href="#">Trouver un médicament</a></li>
					<li class="${param.activePage  == 'questions' ? 'active' : 'none'}"><a href="#">Questions</a></li>
					<li class="pro"><a href="#">Accès
							professionnel</a></li>
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
