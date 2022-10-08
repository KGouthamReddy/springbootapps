<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
	<h1>Shopping Cart</h1>
	<form action="addtocart" method="post">
		<table>
			<tr>
				<td>Product</td>
				<td>
					<select name="product">
						<c:forEach items="${products}" var="product">
							<option>${product.name}</option>
						</c:forEach>						
					</select>
				
				</td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><input type="text" name="qty" /></td>
			</tr>			
			<tr>
				<td></td>
				<td><input type="submit" value="Add" /></td>
			</tr>
		</table>
	</form>
	<br/><br/>
	<ul>
		<c:forEach items="${cartproducts}" var="cartproduct">
			<li>${cartproduct.id} | ${cartproduct.product} | ${cartproduct.qty}</li>
		</c:forEach>
	</ul>
</body>
</html>