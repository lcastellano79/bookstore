<%-- Directives --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.IOException, bookstore.inventory.*" %>
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
        
<%-- Declarations --%>    
<%! String msg = ""; %>
<%! Inventory inventory = null; %>

<%-- Scriptlets --%>      
<% msg = (String) request.getAttribute("errorMsg"); %>
<% inventory = (Inventory) getServletContext().getAttribute("inventory"); %>


<h2>Books</h2>
<table>
	<tr><th>UID</th><th>QTY</th><th>Price</th><th>Author</th></tr>
	
<%-- Scriptlets --%>
<%for(String id : inventory.getProductIDs()) { %>
	<% InventoryEntry ie = inventory.get(id); %>
	<% if(ie.getProductType().equals("BOOK")) { %>
		<tr>
			<%-- Expressions --%>
			<td> <%= id %> </td>
			<td> <%= ie.getQuantity() %> </td>
			<td> <%= ie.getPrice() %> </td>
			<td> <%= ie.getAuthor() %> </td>
		<tr>
	<% }
} %>
</table>
<h2>CompactDiscs</h2>
<table>
	<tr><th>UID</th><th>QTY</th><th>Price</th><th>Artist</th></tr>
	<%-- JSTL --%>
	 <c:forEach var="id" items="${inventory.getProductIDs()}">
	 	<c:if test="${inventory.get(id).getProductType() eq 'COMPACTDISC'}">
			<tr>
				<%-- EL --%>
				<td>${inventory.get(id).getID()}</td>
				<td>${inventory.get(id).getQuantity()}</td>
				<td>${inventory.get(id).getPrice()}</td>
				<td>${inventory.get(id).getArtist()}</td>
			</tr>
		</c:if>
	</c:forEach>
</table>

<%-- Scriptlets --%>
<%if(msg != null) {
	out.print("<div class=\"errors\"><p>" + msg + "</p></div>");
}%>

<p>Back to the <a href="form.jsp">form</a></p>
<p><a href="logout.jsp">Logout</a></p>
		</div>
		<jsp:include page="footer.jsp" />	
	</div>
</body>
</html>