<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../template/nav.jsp" flush="true"></jsp:include>


	<script src="../jquery/jquery-3.3.1.js"></script>
	<script src="../jquery/jquery.mask.min.js"></script>
	<script src="../jquery/jquery.validate.min.js"></script>
	
   	<script src="../js/principal.js"></script>
   
   <div class="container">
		<br>
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="/">Home</a></li>
		    <li class="breadcrumb-item"><a href="/investidores">Lista de Investidores</a></li>
		    <li class="breadcrumb-item active" aria-current="page">Novo Investidor</li>
		  </ol>
		</nav>

		<a class="btn btn-primary" href="<c:url value='/investidores'/>"><i class="fa fa-list"></i> Listagem de Investidores</a>

			<form id="cadastro" action="<c:url value='/investidores/salvar'/>" method="post">

				<div class="form-group">
					<div class="row">
						<div class="col-sm-8">
							<label>Razao Social</label> 
							<input id="razaoSocial" type="text" class="form-control"	placeholder="NOME" name="razaoSocial">
						</div>
						<div class="col-sm-4">
							<label>CNPJ</label> 
							<input id="cnpj" type="text" class="form-control"	placeholder="CNPJ" name="cnpj">
						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="row">
						<div class="col-sm-3">
							<label>Taxa de Juros</label>
							<input id="taxa" type="text" class="form-control" name="taxa">
						</div>
						
						<div class="col-sm-3">
							<label>Saldo Disponível</label> 
							<input id="saldo" type="text" class="form-control" name="saldo">
						</div>
						
					</div>
				</div>
				

				<button  class="btn btn-primary" value="Enviar"><i class="fa fa-save"></i> Salvar </button>
				<input type="reset" class="btn btn-success" value="Limpar">
			</form>
		</div>
		
		<script type="text/javascript">
			$(document).ready(function(){					
				montarMascaras();			
				validaForm();			
			});
		</script>
