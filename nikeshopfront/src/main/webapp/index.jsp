<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="./img/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="./css/Global.css">
	<title>NikeShop</title>
</head>
<body>
	<%
		try
		{
			boolean logged = (Boolean) session.getAttribute("logged");
			
			if( !logged )
			{
				response.sendRedirect("./Login.jsp");
				session.setAttribute("logged", null);
			}	
		}
		
		catch (Exception e)
		{
			response.sendRedirect("./Login.jsp");
			session.setAttribute("logged", null);
		}
	%>
	<h1>NIKESHOP</h1>
</body>
</html>