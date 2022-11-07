<%-- 
    Document   : index
    Created on : Nov 6, 2022, 11:35:23 AM
    Author     : leducphi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="post">
            Username: <input type="text" name="txtUsername">
            password: <input type="password" name="txtPassword">
            <input type="submit" value="Login">
        </form>
        <c:out value="${msg}"></c:out>
    </body>
</html>
