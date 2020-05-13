<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My order History - Evergreen Bookstore Administration</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div align="center">
		<h2>My order History</h2>
	</div>
	<c:if test="${fn:length(listOrders) == 0 }">
	<div align="center">
	<h3>You have not placed any orders</h3>
	</div>
	
	</c:if>
	<div align="center" >
		<table border="1" cellpadding="5">
			<tr>
				<th>Index</th>
				<th>Order ID</th>
				<th>Quantity</th>

				<th>Total Amount</th>
		
				<th>Order Date</th>
				<th>Status</th>
				<th>Actions</th>
				
			</tr>
			<c:forEach var="order" items="${listOrders}" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td>${order.orderId}</td>
					<td>${order.bookCopies}</td>
					<td><fmt:formatNumber value=" ${order.total}"
										type="currency" /></td>
			
					<td>${order.OrderDate}</td>
					<td>${order.status}</td>
					<td>
					<a href="show_order_detail?id=${order.orderId}">view Details</a>&nbsp;
					</td>
				</tr>
			</c:forEach>
		</table>

	</div>

	<jsp:include page="footer.jsp" />
</body>

</html>