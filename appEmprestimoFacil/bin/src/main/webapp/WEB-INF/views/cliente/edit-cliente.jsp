<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../template/nav.jsp" flush="true"></jsp:include>
   
   <div class="container">
		<br>
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="/">Home</a></li>
		    <li class="breadcrumb-item"><a href="/clientes">Lista de Clientes</a></li>
		    <li class="breadcrumb-item active" aria-current="page">Novo Cliente</li>
		  </ol>
		</nav>

		<a class="btn btn-primary" href="<c:url value='/clientes'/>">Listagem de Clientes</a>

			<form action="<c:url value='/clientes/salvar'/>" method="post">
				
				<input type="hidden" class="form-control" value="${cliente.id}" name="id">		
				<input type="hidden" class="form-control" value="${cliente.saldo}" name="saldo">	
				
				<div class="form-group">
					<div class="row">
							
						<div class="col-sm-8">
							<label>Nome</label> 
							<input type="text" class="form-control"	value="${cliente.nome}" name="nome" >
						</div>
						<div class="col-sm-4">
							<label>CPF</label> 
							<input type="text" class="form-control"	value="${cliente.cpf}" name="cpf">
						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="row">
						<div class="col-sm-3">
							<label>Nascimento</label>
							<input type="text" class="form-control" value="${cliente.nascimento}" name="nascimento">
						</div>
						
						<div class="col-sm-3">
							<label>Telefone</label> 
							<input type="text" class="form-control" value="${cliente.telefone}" name="telefone">
						</div>
						
						<div class="col-sm-6">
							<label>E-mail</label> 
							<input type="text" class="form-control" value="${cliente.email}" name="email">
						</div>
					</div>
				</div>
				
				
				
				<!-- ENDEREÇO  -->
				
				<div class="form-group">
					<div class="row">
						<div class="col-sm-3">
							<label>Cep</label> 
							<input type="text" class="form-control" value="${cliente.endereco.cep}" name="endereco.cep">
						</div>
					
						<div class="col-sm-9">
							<label>Endereço</label> 
							<input type="text" class="form-control" value="${cliente.endereco.logradouro}" name="endereco.logradouro">
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class="row">
					<div class="col-sm-5">
						<label>Cidade</label> 
						<input type="text" class="form-control" value="${cliente.endereco.cidade}" name="endereco.cidade">
					</div>
					
					<div class="col-sm-5">
						<label>Bairro</label> 
						<input type="text" class="form-control" value="${cliente.endereco.bairro}" name="endereco.bairro">
					</div>
					
					<div class="col-sm-2">
						<label>UF</label> 
						<input type="text" class="form-control" value="${cliente.endereco.uf}" name="endereco.uf">
					</div>
					</div>
				</div>
				
				
				<div class="form-group">
					<label>Complemento</label> 
					<input type="text" class="form-control" value="${cliente.endereco.complemento}" name="endereco.complemento">
				</div>

				<input type="submit" class="btn btn-primary" value="Enviar">
				<input type="reset" class="btn btn-success" value="Limpar">
			</form>
		</div>
