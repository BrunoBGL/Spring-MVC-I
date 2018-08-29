<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista</title>
</head>
<body>
	<h1>Lista de Produtos</h1>
	<span style="font-size: 1em;">${sucesso}</span>
	<table>
		<tr>
			<td>Tìtulo</td>
			<td>Decrição</td>
			<td>Páginas</td>
		</tr>
		<c:forEach items="${produtos}" var="produto">
			<tr>
				<td>
					<a href="${s:mvcUrl('PC#detalhar').arg(0,produto.id).build()}">
					${produto.titulo}</td>
				<td>${produto.descricao}</td>
				<td>${produto.paginas}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>