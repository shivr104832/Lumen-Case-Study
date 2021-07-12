<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Add Car Details</title>
		<style type="text/css">
			h1
				{
					display: flex;
					justify-content: center;
					color:blue;
				}
			input 
				{
				  cursor: pointer;
				  border-radius: 12px;
				  box-sizing: border-box;
				  display: inline-block;
				  border: 1px solid purple;
				  padding: 12px 2px;
				  margin: 8px 0;
				}
			.input1	
				{
					padding: 10px 5px;
					cursor: pointer;
					background-color: #b24cfd;
					border-radius: 10px;
				}
			select 
				{
					  cursor: pointer;
					  border-radius: 12px;
					  box-sizing: border-box;
					  display: inline-block;
					  border: 1px solid purple;
					  padding: 12px 2px;
					  margin: 8px 0;
				}
			label 
				{
		  			padding: 8px 8px;
				}
		</style>
	</head>
	<body style="background: linear-gradient(57deg,#00c6a7,#1e4d92);">
		<h1>
			Please Enter Car Details
		</h1>
		<c:out value="${rowAdded}"></c:out>
		<form:form method="post" action="carDetails">
		
		<form:label path="model">
								<b>Car model</b>
		</form:label>
		<form:input path="model"/>
		
		<form:label path="current_date">
									<b>Date</b>
		</form:label>
		<form:input path="current_date"/>
		
		<form:label path="kilometer">	
							      <b>Kilometer</b>
		</form:label>
		<form:input path="kilometer"/>
		
		<form:label path="brand">
							<b>Select Brand</b>
		</form:label>
		<form:select path="brand" items="${groups}" />
		
		<form:label path="status">
							<b>Select Status</b>
		</form:label>
		<form:select path="status" items="${group}" />
		
		<input type="submit" class="input1" value="addCar"/>
		
		</form:form>
	</body>
</html>