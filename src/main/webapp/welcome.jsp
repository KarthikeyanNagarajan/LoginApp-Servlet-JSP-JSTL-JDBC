<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
	<%	
	response.setHeader("Cache-Control" , "no-cache, no-store, must-revalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies	
	String name1 = (String)session.getAttribute("username");
	if(session.getAttribute("username") == null)
		response.sendRedirect("login.jsp");
	%>
		
	<c:out value="Welcome ${username}"/>
	
	<a href="index.jsp">Click Here</a>
	
	<form action="logout">		
		<input type="submit" value="logout">
	</form>
</body>
</html>