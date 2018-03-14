<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="style.css" type="text/css" rel="stylesheet">
	<title>Book Store Inventory System</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="container">

<%-- JSTL --%>   		
<jsp:include page="header.jsp" />		
        <div class="page_body">
        <% session.invalidate(); %>
		<p>You have been successfully logged out!</p>
		<p>Back to the <a href="form.jsp">login</a></p>
        </div>
	</div>
	<jsp:include page="footer.jsp" />	
</body>
</html>