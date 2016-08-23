<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Bem Vindo</title>
	</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	
		<%-- comentario --%>
		<%
			String mensagem = "Bem vindo ao sistema de agenda do FJ-21";
		%>
		
		<h1><% out.println(mensagem); %></h1>
		
		<br />
		
		<%
		String desenvolvido = "Desenvolvido por (Fernando Souza)";
		%>
		<h3><%= desenvolvido %></h3>
		
		<br />
		
		<%
			System.out.println("Tudo foi executado");
		%>
		
		<hr /><br />
		<a href="/fj21-agenda/mvc?logica=ListaContatosLogic">
			- Lista de Contatos
		</a><br />
		<a href="/fj21-agenda/adiciona-contato.jsp">
			- Cadastrar contato
		</a><br />
		
		<c:import url="rodape.jsp"></c:import>
</body>
</html>