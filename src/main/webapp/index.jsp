<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Gran Numero</title>
</head>
<body>
<h3><c:out value="${num}"/></h3>

<h1>Bienvenido al Juego del !!Gran Numero!!</h1><hr>
<h3>Ingresa un numero entre 1 y 100</h3>

<form action="index.jsp" method="POST">
	
    <input type="text" name="numero"><br><br>
    <button> Aceptar </button>
</form><hr>	

	 <%  Integer num = (int)(Math.random()*(100-0+1)+0); %>    
    <h3><%= num %></h3>  
   
    <% String numIngresado = request.getParameter("numero"); %>    
    <% String no = "HAS FALLADO, INTENTALO OTRA VEZ"; %>
    <% String si = "FELICIDADES, HAS ACERTADO AL NUMERO CORRECTO"; %>     	
   
    <% if(numIngresado.equals(num)) { %>
        <h1 style="color:green"><%= si %></h1>
    <% }else{ %>
       <h1 style="color:red"><%= no %></h1>
    <% } %> 

</body>
</html>