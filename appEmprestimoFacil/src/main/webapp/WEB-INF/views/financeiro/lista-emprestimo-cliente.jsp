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
		    <li class="breadcrumb-item active" aria-current="page">Históricos de Empréstimos do Cliente</li>
		  </ol>
		</nav>
		
		<a class="btn btn-primary" href="<c:url value='/emprestimos/novo?clienteID=${cliente.id}&investidorID=1'/>">Solicitar Novo Empréstimo</a>
		<br>
	
		<span class="badge badge-pill badge-success">${mensagem}</span>
		<div class="col-sm-6">
		 <p><b>Dados do Cliente - Nome </b> : ${cliente.nome} - <b>CPF</b> : ${cliente.cpf}</p>			  
		</div>
		
		<!-- EMPRESTIMOS DO CLIENTE -->
		<c:forEach items="${cliente.emprestimos}" var="emprestimo">
		
		<div class="col-sm-12">
		 	<p>
		 		<b>Número Empréstimo</b> : ${emprestimo.id}
 			    <b>Razão Social</b> : ${emprestimo.investidor.razaoSocial} 
 			    <b>Taxa de Juros</b> : ${emprestimo.investidor.taxa}
 			    <b>Data Movimento</b> : ${emprestimo.dataMovimento}
		 	</p>			  
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
		   <c:forEach items="${emprestimo.parcelas}" var="p">
			   <tr>
			      <td>${p.numero}</td>
			      <td>${p.valor}</td>
			      <td><fmt:formatDate value="${p.vencimento}" type="both" pattern="dd/MM/yyyy"/> </td>
			      <td><fmt:formatDate value="${p.quitacao}" type="both" pattern="dd/MM/yyyy"/> </td>
			      <td><c:if test="${p.pago}">Pago</c:if><c:if test="${!p.pago}">Em Aberto</c:if> </td>
			      <td>
			      
			      <c:if test="${p.pago}">
			      	<a href='<c:url value="/pagamentos/cliente/${cliente.id}/parcela/${p.id}?operacao=CANCELAR" />' > <button class="btn btn-danger"><i class="fa fa-trash"></i></button> </a>
			      </c:if>
			      
			      <c:if test="${!p.pago}">
			      	<a href='<c:url value="/pagamentos/cliente/${cliente.id}/parcela/${p.id}?operacao=PAGAR" />' > <button class="btn btn-primary"><i class="fa fa-credit-card"></i></button> </a>
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
		</c:forEach>		
		<!-- FIM DOS EMPRESTIMOS DO CLIENTE -->
		</div>