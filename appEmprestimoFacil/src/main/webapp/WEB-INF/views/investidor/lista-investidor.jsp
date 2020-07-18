<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="../template/nav.jsp" flush="true"></jsp:include>
   <div class="container">
		<br>
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="/">Home</a></li>
		    <li class="breadcrumb-item active" aria-current="page">Investidores Ativos da Fintech</li>
		  </ol>
		</nav>
		
		<h3>   
		    <a class="btn btn-primary" href="<c:url value='/clientes/novo'/>"> <i class="fa fa-save"></i> Cadastrar um Novo Investidor</a>
		</h3>
		
		<span class="label label-success">${msg}</span>
		
		<table class="table table-striped" >
			<thead>
			   <tr>
			      <th>Código</th>
			      <th>Razão Social</th>
			      <th>Taxa de Juros</th>
			      <th>Saldo</th>
			      <th>Operações</th>
			   </tr>
			</thead>
			
			<tbody></tbody>
		</table>
	</div>
 