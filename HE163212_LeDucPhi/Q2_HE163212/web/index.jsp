<%-- 
    Document   : index
    Created on : Nov 6, 2022, 11:22:06 AM
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
        <table border = 1>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Published Date</th>
                <th>is Open access</th>
            </tr>
            <c:forEach items="${papers}" var="p">
                <tr>
                    <th>${p.getPid()}</th>
                    <th>${p.getTitle()}</th>
                    <th>${p.getPublished_date()}</th>
                    <th>
                        <c:if test="${p.isOpen_access()}" >
                            <img src="img/open.png" alt=""/>
                        </c:if>
                    </th>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
