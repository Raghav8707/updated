<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Order</title>
</head>
<body>
	<form>
		User name:
		<input type="text" name="userName" value="${userName }"> <br/><br/>
		
		Stock Id :
		<input type="text" name="stockId" value="${param.id}"><br/><br/>
		 
		Quantity Order:
		<input type="number" name="quantityOrder"/> <br/><br/>
		 
		<input type="submit" value="Place Order" />
	</form>
      
	<c:if test="${param.userName != null}">
		<jsp:useBean id="order" class="com.Infinite.inventoryproject.Order" />
		<jsp:useBean id="dao" class="com.Infinite.inventoryproject.OrderDAO"/>
		
		<jsp:setProperty property="*" name="order"/>
		
		<c:out value="${dao.addOrder(order)}" />
	</c:if>

</body>
</html>