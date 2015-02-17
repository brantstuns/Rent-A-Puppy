<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : response
    Created on : Feb 13, 2015, 4:55:47 PM
    Author     : b2raniel
--%>
<sql:query var="puppyquery" dataSource="jdbc/rentapup">
    SELECT * FROM dogs, dog_info
    WHERE dogs.dog_id = dog_info.dog_idfk
    AND dog_info.doginfo_id = ? <sql:param value="${param.doginfo_id}"/>
</sql:query>

<c:set var="puppydetails" value="${puppyquery.rows[0]}"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>${puppydetails.need_for}</title>
    </head>
    <body>
        <table>
            <tr>
                <th colspan="2">${puppydetails.need_for}</th>
            </tr>
            <tr>
                <td><strong>personality: </strong></td>
                <td><span style="font-size:smaller; font-style:italic;">${puppydetails.description}</span></td>
            </tr>
            <tr>
                <td><strong>Puppy: </strong></td>
                <td><strong>${puppydetails.first_name} ${puppydetails.nick_name}</strong>
                    <br><span style="font-size:smaller; font-style:italic;">
                    <em>member since: ${puppydetails.member_since}</em></span></td>
            </tr>
            <tr>
                <td><strong>Owner's Contact Info: </strong></td>
                <td><strong>email: </strong>
                    <a href="mailto:${puppydetails.email}">${puppydetails.email}</a>
                    <br><strong>phone: </strong>${puppydetails.owners_telephone}</td>
            </tr>
        </table>
    </body>
</html>
