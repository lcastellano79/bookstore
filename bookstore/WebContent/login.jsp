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
                <form method="POST" action="j_security_check">
                    <div class="product">
                        <p>Login</p>
                        <label for="j_username" >User name:</label> <input type="text" name="j_username" id="j_username"> <br>
                        <label for="j_password">Password:</label> <input type="text" name="j_password" id="j_password"> <br>
                    </div>
                    <input id="buttom" type="submit" value="Submit">
                </form>
            </div>
	</div>
	<jsp:include page="footer.jsp" />	
</body>
</html>