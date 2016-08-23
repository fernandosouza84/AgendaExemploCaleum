<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="
		java.util.*,
		br.com.caelum.agenda.dao.*,
		br.com.caelum.agenda.modelo.*"	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Lista Contatos</title>
	</head>
	<body>
		<h1>Lista de Contas</h1><hr /><br />
		<table border="1">
			<tr>
				<td bgcolor="yellow">Nome</td>
				<td bgcolor="yellow">Email</td>
				<td bgcolor="yellow">Endereço</td>
				<td bgcolor="yellow">Data Nascimento</td>
			</tr>
			<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYY");
			
			for(Contato contato : contatos){
			%>
				<tr>
					<td><%=contato.getNome()%></td>
					<td><%=contato.getEmail()%></td>
					<td><%=contato.getEndereco()%></td>
					<td align="center">
						<%
						out.println(sdf.format(contato.getDataNascimento().getTime()));
						%>
					</td>
				</tr>
			<%}%>
		</table>
	</body>
</html>