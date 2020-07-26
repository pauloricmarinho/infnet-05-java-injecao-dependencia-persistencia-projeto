<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="../template/nav.jsp" flush="true"></jsp:include>
   <div class="container">
		<br>
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="/">Home</a></li>
		    <li class="breadcrumb-item active" aria-current="page">Balanço Financeiro Fintech</li>
		  </ol>
		</nav>
		
	 
		<a class="btn btn-danger" href="<c:url value='/balanco-financeiro/EMPRESTIMOS'/>"> <i class="fa fa-save"></i> Empréstimos</a>
		<a class="btn btn-primary" href="<c:url value='/balanco-financeiro/PAGAMENTOS'/>"> <i class="fa fa-save"></i> Pagamentos</a>
		<br><br>
		
		<span class="label label-success">${msg}</span>
		
		<table class="table table-striped" >
			<thead>
			   <tr>
			      <th>Número Boleto</th>
			      <th>Cliente</th>
			      <th>Investidor</th>
			      <th>Numero Parcela</th>
			      <th>Valor Recebido</th>
			      <th>Data de Vencimento</th>
			      <th>Data da Quitação</th>
			   </tr>
			</thead>
			
			<tbody>
			
			<c:forEach items="${parcelas}" var="p">
				<tr>
			      <td>${p.id}</td>
			      <td>${p.emprestimo.cliente.nome}</td>
			      <td>${p.emprestimo.investidor.razaoSocial}</td>
			      <td>${p.numero}</td>
			      <td>${p.valor}</td>
			      <td>${p.vencimento}</td>
			      <td>${p.quitacao}</td>
			   </tr>
			
			</c:forEach>
			
			</tbody>
		</table>
	</div>
 