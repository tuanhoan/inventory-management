<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Thông tin của bạn! | </title>

  <!-- Bootstrap -->
  <link href="<c:url value="/resources/vendors/bootstrap/dist/css/bootstrap.min.css"/>" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="<c:url value="/resources/vendors/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">
  <!-- NProgress -->
  <link href="<c:url value="/resources/vendors/nprogress/nprogress.css"/>" rel="stylesheet">
 
</head>
<body> 
	<c:forEach items="${userlinks}" var="userlink" varStatus="loop"> 
		 <button type="button" class="btn btn-primary">${userlink.users.name }</button>
		 <a href="${userlink.url }" >${userlink.users.name }</a>
	</c:forEach>








	
</body>
</html>