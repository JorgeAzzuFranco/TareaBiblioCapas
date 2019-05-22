<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
table {
   width: 50%;
   border: 1px solid #000;
   margin: auto;
}
td {
   width: 20%;
   text-align: left;
   vertical-align: top;
   border: 1px solid #000;
   padding: 0.3em;
   caption-side: bottom;
} 
th {
   background: #22aff7;
   width: 20%;
   text-align: center;
   font-size:20px;
   color: white;
   text-decoration: bold;
}
</style>

<title>Resultados de la busqueda</title>
</head>
<body>

<h1 style="text-align:center;">${titulo}</h1>

<table>
	<tr>
		<th>ISBN</th>
		<th>Titulo</th>
		<th>Autor</th>
		<th>G&eacute;nero</th>
		<th>Exsistencias</th>
	</tr>
	<c:forEach var="lib" items="${lib}">
		<tr>
			<td style="text-align:center;">${lib.isbn}</td>
			<td style="text-align:center;">${lib.titulo}</td>
			<td style="text-align:center;">${lib.autor}</td>
			<td style="text-align:center;">${lib.genero}</td>
			<td style="text-align:center;">${lib.existencia}</td>
		</tr>
	</c:forEach>
	
</table>
</body>
</html>