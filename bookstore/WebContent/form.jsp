<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" type="text/css" rel="stylesheet">
        <title>Book Store Inventory System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="container">
		<jsp:include page="header.jsp" />	
            <div class="page_body">
                <form method="POST" action="updateInventory.do">
                    <div class="product">
                        <p>Add Book</p>
                        <label for="BOOK_UID" >UID:</label> <input type="text" name="BOOK_UID" id="BOOK_UID"> <br>
                        <label for="BOOK_QTY">QTY:</label> <input type="text" name="BOOK_QTY" id="BOOK_QTY"> <br>
                        <label for="BOOK_PRICE">Price:</label> <input type="text" name="BOOK_PRICE" id="BOOK_PRICE"> <br>
                        <label for="BOOK_AUTHOR">Author:</label> <input type="text" name="BOOK_AUTHOR" id="BOOK_AUTHOR"> <br>
                    </div>
                    <div class="product">   
                        <p>Add Compact Disk</p>
                        <label for="CD_UID" >UID:</label> <input type="text" name="CD_UID" id="CD_UID"> <br>
                        <label for="CD_QTY">QTY:</label> <input type="text" name="CD_QTY" id="CD_QTY"> <br>
                        <label for="CD_PRICE">Price:</label> <input type="text" name="CD_PRICE" id="CD_PRICE"> <br>
                        <label for="CD_ARTIST">Artist:</label> <input type="text" name="CD_ARTIST" id="CD_ARTIST"> <br>
                    </div>
                    <input id="buttom" type="submit" value="Submit">
                </form>
            </div>
		<jsp:include page="footer.jsp" />
        </div>    
    </body>
</html>