<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

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
		<span class="danger">${mensagem}</span>
		<br><br>
		<div class="col-sm-6">
			<table class="table table-striped" >
			<thead>
			   <tr>
			      <th>Cliente:</th>
			      <td><b>Nome </b> : ${cliente.nome} - <b>CPF</b> : ${cliente.cpf}</td>
			   </tr>
			   <tr>
			      <th>Investidor:</th>
			      <td><b>Razão Social</b> : ${investidor.razaoSocial} <b>Taxa de Juros</b> : ${investidor.taxa}</td>
			   </tr>
			</thead>
			</table>
		</div>

		<table class="table table-striped" >
		<thead>
		   <tr>
		      <th>Ordem Parcela</th>
		      <th>Valor</th>
		      <th>Data Vencimento</th>
		      <th>Paga</th>
		   </tr>
		</thead>

		<tbody>
		   <c:forEach items="${parcelas}" var="p" varStatus="x">
			   <tr>
			      <td>${x.count}</td>
			      <td>${p.valor}</td>
			      <td><fmt:formatDate value="${p.vencimento}" type="both" pattern="dd/MM/yyyy"/> </td>
			      <td><c:if test="${p.pago}">Pago</c:if><c:if test="${!p.pago}">Em Aberto</c:if> </td>
			   </tr>
		   </c:forEach>
		</tbody>
		
		<tfoot>
			<tr>
				<td>Valor Total com Juros</td>
				<td colspan="3">${emprestimo.valor}</td>
			</tr>
		</tfoot>
		</table>
			
			
		<form action="<c:url value='/emprestimos/confirmar'/>" method="post">

				<input type="hidden" class="form-control"	name="cliente.id" value="${emprestimo.cliente.id}">
				<input type="hidden" class="form-control"	name="investidor.id" value="${emprestimo.investidor.id}">	
				<input type="hidden" class="form-control"	name="valor" value="${emprestimo.valor}">
				<input type="hidden" class="form-control"	name="valorBase" value="${emprestimo.valorBase}">	
				<input type="hidden" class="form-control"	name="numeroParcelas" value="${emprestimo.numeroParcelas}">	
			
			<button  class="btn btn-primary" value="Enviar"><i class="fa fa-save"></i> Confirmar Plano </button>
			<input type="reset" class="btn btn-success" value="Limpar">
		</form>


				
		</div>
		