<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="message_css" fragment="true" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
<jsp:invoke fragment="message_css"/>
</head>
<body>
	<nav class="navbar navbar-light" style="background-color: #7CFC00;">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<img src="assets/images/whatsapp-logo.png" width="40" height="40" alt="">
				<a class="navbar-brand" href="/">Sistema Whatsapp</a>
			</div>


			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">


					<li><a href="/admin/destinatarios">Destinatarios</a></li>
					<li><a href="/admin/relatorios">Relatorios</a></li>
					<li><a href="/filme/enviar-msg">Enviar Msg</a></li>																							

					<sec:authorize access="!isAuthenticated()">
						<li><a href="/login">Login</a></li>
					</sec:authorize>


					<sec:authorize access="isAnonymous() Or hasRole('COMPRADOR')">
						<li><a href="/compra">Comprar</a></li>
					</sec:authorize>

					<sec:authorize access="hasRole('COMPRADOR')">
						<li><a href="/usuario/compras">Minhas Compras</a></li>
					</sec:authorize>

					<sec:authorize access="isAuthenticated()">
						<li><a href="/logout">Logout</a></li>
					</sec:authorize>
				</ul>
			</div>

		</div>
	</nav>

	<jsp:doBody/>
	<script type="text/javascript" src="/assets/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="/assets/js/bootstrap.min.js"></script>
</body>


</html>
