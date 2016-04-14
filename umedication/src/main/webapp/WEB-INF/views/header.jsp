<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
${request.paramValues}
	<div id="header" class="for-page">
		<div id="nav-wrapper">
			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="${request.getParameter('activePage') == 'home' ? 'active' : 'none'}"><a href="<c:url value="/" />">Accueil</a></li>
					<li class="${pageContext.request.servletPath == 'product' ? 'active' : 'none'}"><a href="<c:url value="/products" />">Produits</a></li>
					<li class="${pageContext.request.servletPath == 'pharmacy' ? 'active' : 'none'}"><a href="<c:url value="/pharmacy" />">Pharmacie</a></li>
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
				<span class="tag">Trouver une pharmacie en un clique !</span>
			</div>
		</div>
	</div>
