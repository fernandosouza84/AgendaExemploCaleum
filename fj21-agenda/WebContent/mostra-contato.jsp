<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Mostra Contato - Agenda</title>
	<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
</head>
<body>

	<c:import url="cabecalho.jsp"></c:import>
	<br />
	
	<form action="mvc?logica=AlteraContatoLogic" method="post">
		<input type="hidden" name="id" id="id" value="${contato.id}"/>
		Nome: <input type="text" name="nome" value="${contato.nome}"/><br />
		Email: <input type="text" name="email" value="${contato.email}"/><br />
		Endereço: <input type="text" name="endereco" value="${contato.endereco}"/><br />
		Data Nascimento: <caelum:campoData id="dataNascimento" value="${contato.dataNascimento.time}"/><br />

		<input type="submit" value="Gravar">
	</form>
	
	<c:import url="rodape.jsp"></c:import>
</body>
</html>