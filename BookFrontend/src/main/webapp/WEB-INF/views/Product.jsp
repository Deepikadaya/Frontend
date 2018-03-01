<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product page</title>
</head>
<body>
<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h3 align="center">Product Page</h3>
<form:form modelAttribute="product" action="InsertProduct" method="post" enctype="multipart/form-data">


<table >
<tr><td colspan="2">Product Details</td></tr>
    <tr>
          <td>CategoryId</td>
          <td><form:select path="categoryId">
             <form:option value="0" lable="---select---"></form:option>
             <form:options items="${catlist }" lable="---select---"></form:options>
             
          </form:select>
       </tr>
       <tr>
          <td>Supplier</td>
          <td><form:input path="supplierId"/></td>
       </tr>
       
       <tr>
          <td>Product Name</td>
          <td><form:input path="productName"/></td>
       </tr>
         
       <tr>
          <td>Price</td>
          <td><form:input path="price"/></td>
       </tr>
          
          <tr>
          <td>Stock</td>
          <td><form:input path="stock"/></td>
       </tr>
          
       <tr>
          <td>Product Description</td>
          <td><form:input path="prodDesc"/></td>
       </tr>
       
       
       <tr>
          <td colsapn="2">
          <center><input type="submit" value="Submit"></center>
          </td>
       </tr>   
          
	</table>


</form:form>
</body>
</html>