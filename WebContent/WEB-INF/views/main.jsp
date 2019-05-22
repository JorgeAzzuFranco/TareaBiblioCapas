<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
h1{
	text-align: center;
}
div{
	margin:auto;
	text-align:center;
}
.boton{
    text-decoration: none;
    padding: 10px;
    font-weight: 600;
    font-size: 20px;
    color: #ffffff;
    background-color: #1883ba;
    border-radius: 6px;
    border: 2px solid #0016b0;
  }
  .boton:hover{
  	text-decoration: none;
    padding: 10px;
    font-weight: 600;
    font-size: 20px;
    color: #ffffff;
    background-color: #22aff7;
    border-radius: 6px;
    border: 2px solid #021ac9;
  }
  .input{
  	border-radius:5px;
  	height: 30px;
  	width: 200px;
  	font-size:20px;
  }
 .select{
	height:40px;
	width:100px;
	border-radius:5px;
	font-size:20px;
 }
</style>
<meta charset="ISO-8859-1">
<title>Biblioteca Capas</title>
</head>
<body>
	<h1>Bienvenidos a la biblioteca de capas</h1>
	
	<div>
		<form action="${pageContext.request.contextPath}/buscar" method="post">
			<label for="code">Buscar por: </label>
			<input type="text" class="input" name="code">
			<select class="select" name="type">
				<option value="1">Autor</option>
				<option value="2">ISBN</option>
				<option value="3">G&eacute;nero</option>
			</select>
			<input class="boton" type="submit">
		</form>
	</div>
	<br>
	<div>
		<form action="${pageContext.request.contextPath}/verTodos" method="post">
			<input class="boton" type="submit" value="Ver todos los libros">
		</form>
	</div>
</body>
</html>