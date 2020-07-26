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
		    <li class="breadcrumb-item active" aria-current="page">Clientes Ativos da Fintech</li>
		  </ol>
		</nav>
		
		<h3>   
		    <a class="btn btn-primary" href="<c:url value='/clientes/novo'/>"> <i class="fa fa-save"></i> Cadastrar um Novo Cliente</a>
		</h3>
		
		<span class="label label-success">${msg}</span>
		
		<table class="table table-striped" >
			<thead>
			   <tr>
			      <th>Código</th>
			      <th>Nome</th>
			      <th>CPF</th>
			      <th>Saldo</th>
			      <th>Operações</th>
			   </tr>
			</thead>
			
			<tbody>
			  <c:forEach items="${clientes}" var="cliente">
			  	
			  	<c:if test="${cliente.ativo}">
			  	<tr>
			  		<td>${cliente.id}</td>
			      	<td>${cliente.nome}</td>
			      	<td>${cliente.cpf}</td>
			      	<td>
			      	R$ <span style="color:red">
			      		<fmt:formatNumber value="${cliente.saldo}" minFractionDigits="2"/>
			      	</span>
			      	
			      	</td>
			      	 <td>			      	 
<!-- 			         <a href='#'><button class="btn btn-primary"><i class="fa fa-eye"></i></button> </a> -->
			         <a href='<c:url value="/clientes/editar/${cliente.id}" />' > <button class="btn btn-primary"><i class="fa fa-edit"></i></button> </a>			       
			         <a href='<c:url value="/clientes/excluir/${cliente.id}" />' > <button class="btn btn-danger"><i class="fa fa-trash"></i></button> </a>
		         	 <a href='<c:url value='/emprestimos/novo?clienteID=${cliente.id}&investidorID=1'/>' > <button class="btn btn-info"><i class="fa fa-credit-card"></i></button> </a>
			         <a href='<c:url value="/pagamentos/cliente/${cliente.id}" />' > <button class="btn btn-success"><i class="fa fa-list"></i></button> </a>
			       	</td>
			  	</tr>
			  	</c:if>
			  </c:forEach>
			</tbody>
		</table>
	</div>