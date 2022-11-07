<%-- 
    Document   : assign
    Created on : Nov 6, 2022, 11:47:45 AM
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
        <form action="assign" method="post">
            Paper Id: ${paper.getPid()} <br>
            Title:  ${paper.getTitle()} <br>
            Published Date: ${paper.getPublished_date()}<br>
            Open Access: ${paper.isOpen_access()? "Yes" : "No "}<br>

            <table border = 1>
                <tr>
                    <th>Assigned</th>
                    <th>Author</th>
                    <th>Is Corresponding Author</th>
                </tr>
                <c:forEach items="${listPA}" var="p">
                    <tr>
                        <th>${p.getPid()}</th>
                        <th>${p.getAuid()}</th>
                        <th>${p.getCorresponding_author()}</th>

                    </tr>
                </c:forEach>
            </table>
            <input type="submit" value="Save">
        </form>
    </body>
</html>
