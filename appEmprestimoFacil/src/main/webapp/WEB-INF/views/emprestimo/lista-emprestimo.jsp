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
		    <li class="breadcrumb-item active" aria-current="page">Detalhes do Plano Contratado</li>
		  </ol>
		</nav>

	
		<span class="badge badge-pill badge-success">${mensagem}</span>
		<br><br>
		<div class="col-sm-6">
			<table class="table table-striped" >
			<thead>
			   <tr>
			      <th>Cliente:</th>
			      <td><b>Nome </b> : ${emprestimo.cliente.nome} - <b>CPF</b> : ${emprestimo.cliente.cpf}</td>
			   </tr>
			   <tr>
			      <th>Investidor:</th>
			      <td><b>Razão Social</b> : ${emprestimo.investidor.razaoSocial} <b>Taxa de Juros</b> : ${emprestimo.investidor.taxa}</td>
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
		      <th>Data Quitação</th>
		      <th>Paga</th>
		      <th></th>
		   </tr>
		</thead>

		<tbody>
		   <c:forEach items="${emprestimo.parcelas}" var="p" varStatus="x">
			   <tr>
			      <td>${x.count}</td>
			      <td>${p.valor}</td>
			      <td><fmt:formatDate value="${p.vencimento}" type="both" pattern="dd/MM/yyyy"/> </td>
			      <td><fmt:formatDate value="${p.quitacao}" type="both" pattern="dd/MM/yyyy"/> </td>
			      <td><c:if test="${p.pago}">Pago</c:if><c:if test="${!p.pago}">Em Aberto</c:if> </td>
			      <td>
			      
			      <c:if test="${p.pago}">
			      	<a href='<c:url value="/emprestimos/cancelar/${p.id}" />' > <button class="btn btn-danger"><i class="fa fa-trash"></i></button> </a>
			      </c:if>
			      
			      <c:if test="${!p.pago}">
			      	<a href='<c:url value="/emprestimos/pagar/${p.id}" />' > <button class="btn btn-primary"><i class="fa fa-credit-card"></i></button> </a>
			      </c:if>
			      
			       </td>
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
							
		</div>
		