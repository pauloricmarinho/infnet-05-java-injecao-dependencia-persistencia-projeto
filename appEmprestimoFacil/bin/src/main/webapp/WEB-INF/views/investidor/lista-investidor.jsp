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
		    <li class="breadcrumb-item active" aria-current="page">Investidores Ativos da Fintech</li>
		  </ol>
		</nav>
		
		<h3>   
		    <a class="btn btn-primary" href="<c:url value='/investidores/novo'/>"> <i class="fa fa-save"></i> Cadastrar um Novo Investidor</a>
		</h3>
		
		<span class="label label-success">${msg}</span>
		
		<table class="table table-striped" >
			<thead>
			   <tr>
			      <th>Código</th>
			      <th>Razão Social</th>
			      <th>Data Cadastro</th>
			      <th>Taxa de Juros</th>
			      <th>Saldo</th>
			      <th>Operações</th>
			   </tr>
			</thead>
			
			<tbody>
			<c:forEach items="${investidores}" var="investidor">
				<tr>
				      <td>${investidor.id}</td>
				      <td>${investidor.razaoSocial}</td>
				      <td>${investidor.dataAtualizacao}</td>
				      <td>${investidor.taxa}</td>
				      <td>${investidor.saldo}</td>
				      <td>
				      
				       	<a href='<c:url value="/investidores/editar/${investidor.id}" />' > <button class="btn btn-primary"><i class="fa fa-edit"></i></button> </a>			       
			         	<a href='<c:url value="/investidores/excluir/${investidor.id}" />' > <button class="btn btn-danger"><i class="fa fa-trash"></i></button> </a>
		         	 	<a href='<c:url value='/emprestimos/novo?clienteID=${cliente.id}&investidorID=${investidor.id}'/>' > <button class="btn btn-info"><i class="fa fa-users"></i></button> </a>
				      
				      </td>
				   </tr>
			
			</c:forEach>
			
			
			</tbody>
		</table>
	</div>
 