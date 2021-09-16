<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="es">
<head>
	<link rel="shortcut icon" href="./img/favicon.ico" sizes="14x15" type="image/x-icon">
	<link rel="icon" href="./img/favicon.ico" sizes="14x15" type="image/x-icon">
	<link rel="stylesheet" href="./css/Global.css">
	<link rel="stylesheet" href="./css/Login.css">
	<title>NikeShop | Login</title>
</head>
<body>
	<img class="nike-banner" alt="Nike" src="./img/nike-banner.jpg">
	<article class="login-container" >
		<h1>Iniciar Sesión</h1>
		<form class="login-form" method="post" action="./DemoServlet">
			<input name="user" class="login-input" placeholder="Usuario">
			<input name="pass" type="password" class="login-input" placeholder="Contraseña">
			<%
				try
				{
					boolean log = (Boolean) session.getAttribute("logIncorrect");
					
					if( log )
					{
						out.println("<p class='login-error'>Usuario y/o Contraseña incorrectos</p>");
						session.setAttribute("logIncorrect", null); 
					}	
				}
			
				catch (Exception e)
				{
					out.println(" ");
				}
			%>
			<button class="login-button" type="submit">Iniciar Sesión</button>
		</form>
	</article>
</body>
</html>