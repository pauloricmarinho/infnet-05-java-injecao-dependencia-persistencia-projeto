<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema Emprestimo Fácil</title>

<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
<link rel="stylesheet"	href="css/sticky-footer.css"/>

</head>
<body>

	<!-- Image and text -->
	<nav class="navbar navbar-dark bg-dark">


		<a class="navbar-brand" href="#">Emprestimo Fácil</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="#">Home <span	class="sr-only">(current)</span></a> 
				<a class="nav-item nav-link" href="#">Novo Cliente</a> 
				<a class="nav-item nav-link" href="#">Novo Investidor</a>
				<a class="nav-item nav-link" href="#">Pagamentos</a>
				<a class="nav-item nav-link" href="#">Emprestimos</a>
				<a class="nav-item nav-link" href="#">Balanço Financeiro</a>
				<a class="nav-item nav-link disabled" href="#">Disabled</a>
			</div>
		</div>

	</nav>

	<div class="container">
		
		<br>
		<h4>Sistema Financeiro - Empréstimo Fácil <small>2020</small></h4>
		<br>
		
		<div class="row">
			<!-- Cartão Cliente -->
			<div class="col-sm-4">

				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="imgs/cliente.jpg" height="180px" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Clientes</h5>
						<p class="card-text">Seja um Novo Cliente da Emprestimo Fácil,
							Consulte as Taxa de Condições Especiais.</p>
						<a href="<c:url value='/clientes/novo'/>" class="btn btn-primary"><i class="fa fa-address-book-o"></i></a> 
						<a href="<c:url value='/clientes'/>" class="btn btn-primary"><i class="fa fa-list"></i></a>
					</div>
				</div>

			</div>

			<!-- Cartão Investidores -->
			<div class="col-sm-4">

				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="imgs/investidor.jpg" height="180px" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Investidores</h5>
						<p class="card-text">
							Seja um novo Investidor da Emprestimo Fácil.<br>
							<br>
						</p>
						<a href="<c:url value='/investidores/novo'/>" class="btn btn-primary"><i class="fa fa-university"></i></a> 
						<a href="<c:url value='/investidores'/>" class="btn btn-primary"><i class="fa fa-list"></i></a>
					</div>
				</div>

			</div>
			
			<!-- Cartão Investidores -->
			<div class="col-sm-4">

				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="imgs/balanco.jpg" height="180px" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Balanço Financeiro</h5>
						<p class="card-text">
							Pagamentos, Empréstimos e Balanço Financeiro.<br>
							<br>
						</p>
						<a href="<c:url value='/emprestimos/novo'/>" class="btn btn-primary"><i class="fa fa-credit-card"></i></a> 
						<a href="<c:url value='/balanco-financeiro/EMPRESTIMOS'/>"	class="btn btn-danger"><i class="fa fa-money"></i></a>
						<a href="<c:url value='/balanco-financeiro/PAGAMENTOS'/>"	class="btn btn-success"><i class="fa fa-bars"></i> </a>
					</div>
				</div>
				
				

			</div>
		</div>

		<div class="row">
			<!-- Cartão Emprestimos -->
			<div class="col-sm-6"></div>

			<!-- Cartão Pagamentos -->
			<div class="col-sm-6"></div>
		</div>
	</div>
	<!-- Final Container -->

	<jsp:include page="template/footer.jsp" flush="true"></jsp:include>