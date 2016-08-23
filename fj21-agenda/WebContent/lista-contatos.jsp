<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Contatos</title>
</head>

<body>
	<c:import url="cabecalho.jsp"></c:import>
	<br />

	Total de contatos: <b>${dao.lista.size()}</b>
	
	<table border=1>
		<tr bgcolor="#E8E8E8">
			<td>Nome</td>
			<td>Email</td>
			<td>Endereço</td>
			<td>Data Nascimento</td>
			<td>Excluir</td>
			<td>Alterar</td>
		</tr>
		
		<c:forEach var="contato" items="${contatos}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? '778899' : 'BEBEBE' }">
				<td>${contato.nome}</td>
				<td>
					<c:choose>										
						<c:when test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
						<c:when test="${empty contato.email}">
							Email não informado
						</c:when>
					</c:choose>
				</td>
				<td>
					${contato.endereco}
				</td>
				<td>
					<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/YYYY" />
				</td>
				<td>
					<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>
				<td>
					<a href="mvc?logica=MostraContatoLogic&id=${contato.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	
	
	<c:import url="rodape.jsp"></c:import>
</body>
</html>