<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Store</title>

<script type="text/javascript" src="js/app.js"></script>

<style>
input[type=text] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}
table, th {
	border: 1px solid black;
	border-collapse: collapse;
}

th {
	border: 1px solid black;
	border-collapse: collapse;
	background-color: 0000cd;
}

th, td {
	padding: 10px;
	text-align: left;
}
</style>
</head>
<body>

	<%@include file="header.jsp"%>

	<h3>Add Book</h3>

	<font color="red">${eMsg}</font>
	<font color="green">${sMsg}</font>

	<form:form action="store" method="POST" modelAttribute="book">
		<table>
			<tr>
				<td>Book Name :</td>
				<td><form:input path="bname" /> <font color='red'><span
						id="bnameMsg"></span></font></td>
			</tr>
			<tr>
				<td>Book Isbn:</td>
				<td><form:input path="isbn" /> <font color='red'><span
						id="isbnMsg"></span></font></td>
			</tr>
			<tr>
				<td>Book Price:</td>
				<td><form:input path="price" /> <font color='red'><span
						id="priceMsg"></span></font></td>
			</tr>
			<tr>
				<td><input type="reset" value="Reset" class="reset"/></td>
				<td><input type="Submit" value="Submit" class="button button2"
					onclick="return validateForm()" /></td>
			</tr>
		</table>
	</form:form>
	<%@include file="footer.jsp"%>
</body>
</html>