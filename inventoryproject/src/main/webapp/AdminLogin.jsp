<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="VendorLogin.jsp" method="post">
			<input type="text" name="username" placeholder="Username"><br><br>
			<input type="password" name="password" placeholder="Password"><br><br>
			<input type="submit" value="SIGN IN">
			
	</form>
	<c:if test="${param.username!=null && param.password!=null}">
	<jsp:useBean id="admin" class="com.Infinite.inventoryproject."/>
	<jsp:setProperty property="*" name="admin"/>
	<jsp:useBean id="dao" class="com.infinite.inventoryyy.InventoryDAO"/>
	<c:out value="${dao.authenticateAdmin(param.username,param.password)}"/>
	
	<jsp:forward page="###"></jsp:forward>
	
	
	</c:if>
	
	
	</body>
</html>