<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Feb 14, 2015, 10:25:21 PM
    Author     : braniel
--%>

<sql:query var="need_dog_for" dataSource="jdbc/rentapup">
SELECT doginfo_id, need_for FROM dog_info
</sql:query>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Rent A Puppy</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h1> Rent A Puppy </h1>
            <h1 id="slogan"> All the perks of having a puppy without all the work. </h1>
        </div>
        <table border="1">
            <tbody>
                <tr>
                    <td>
                        <form action="response.jsp">
                            <strong> What do you want to rent a puppy for? </strong>
                            <select name="doginfo_id">
                                <c:forEach var="row" items="${need_dog_for.rows}">
                                    <option value="${row.doginfo_id}">${row.need_for}</option>
                                </c:forEach>
                            </select>
                            <input type="submit" value="submit" name="submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>