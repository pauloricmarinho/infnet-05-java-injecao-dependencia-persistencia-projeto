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

		<a class="btn btn-primary" href="<c:url value='/clientes'/>"><i class="fa fa-list"></i> Listagem de Clientes</a>

			<!-- FORM Filtro -->
			<form action="<c:url value='/emprestimos/novo'/>" method="get">
				<div class="form-group">
					<div class="row">
						<div class="col-sm-8">
							<label>Cliente</label> 
								<select class="form-control" name="clienteID" onchange="this.form.submit();"> 
									<option value="0">Selecione o Cliente</option>								
									<c:forEach items="${clientes}" var="c">
										<option value="${c.id}" <c:if test="${cliente.id == c.id}">selected</c:if> >${c.nome}</option>
									</c:forEach>									
								</select>
						</div>
						<div class="col-sm-4">
							<label>CPF</label> 
							<input type="text" class="form-control"	disabled value="${cliente.cpf}">
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class="row">
						<div class="col-sm-8">
							<label>Investidor</label> 
								<select class="form-control" name="investidorID"  onchange="this.form.submit();" > 
									<c:forEach items="${investidores}" var="i">
										<option value="${i.id}" <c:if test="${investidor.id == i.id}">selected</c:if> >${i.razaoSocial}</option>
									</c:forEach>
								</select>
							
						</div>
						<div class="col-sm-4">
							<label>Taxa de Juros</label> 
							<input type="text" id="valorTaxa" disabled="disabled" class="form-control" value="${investidor.taxa}" >
						</div>
					</div>
				</div>
				
				</form> <!-- Final do FORM Filtro -->
				
			
				<form action="<c:url value='/emprestimos/parcelas'/>" method="post">
					<div class="form-group">
						<div class="row">
								<input type="hidden" class="form-control"	name="cliente.id" value="${cliente.id}">
								<input type="hidden" class="form-control"	name="investidor.id" value="${investidor.id}">	
						
							<div class="col-sm-3">
								<label>Valor</label> 
								<input type="text" id="valorPago" name="valorBase" class="form-control"	placeholder="Valor"  onblur="javascript: calcularValor();">
							</div>
							<div class="col-sm-3">
								<label>Valor Pagamento + Juros</label> 
								<input type="text" id="valorPagarAux" disabled class="form-control"	placeholder="Valor Final">
								<input type="hidden" name="valor" id="valorPagar"  class="form-control">
							</div>
							
							<div class="col-sm-3">
								<label>Número de Parcelas</label> 
								<select class="form-control" name="numeroParcelas"> 
									<option value="1">1x</option>
									<option value="2">2x</option>
									<option value="3">3x</option>
									<option value="4">4x</option>
									<option value="5">5x</option>
								</select>
							</div>
						</div>
					</div>
					
					<button  class="btn btn-primary" value="Enviar"><i class="fa fa-save"></i> Consulta Condições </button>
					<input type="reset" class="btn btn-success" value="Limpar">
				</form>


				
		</div>
		<script>
			function calcularValor(){
				var valorTaxa = parseFloat($("#valorTaxa").val());
				var valorEmprestimo = parseFloat($("#valorPago").val());
				var valorPagar = valorEmprestimo +  (valorEmprestimo * valorTaxa);
				$("#valorPagarAux").attr("value", valorPagar);
				$("#valorPagar").attr("value", valorPagar);
				
			}

		</script>