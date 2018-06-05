<%-- 
    Document   : erreur.jsp
    Created on : 30 mai 2018, 09:43:27
    Author     : bmarais
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css" />
    </head>
    <body>
        <center>
            <img src="img/error.PNG" alt="error"/>
            <h1 class="error"> <%=response.getStatus()%> </h1>
            <h3> Une erreur est survenue, la page demandée n'existe pas... </h3>
        </center>
    </body>
</html>
