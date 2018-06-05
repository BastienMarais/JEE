<%-- 
    Document   : prix
    Created on : 30 mai 2018, 07:20:18
    Author     : bmarais
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Application Web - formulaire pour Prix à payer </h1>
        <hr>
        Compléter les champs suivants :
        <form name="prixForm" action="action.jsp" method="POST">
            <label for="Q"> Quantité : </label>
            <input id="Q" type="number" value="0" min="0" name="inputQ" required></input>
            <br/>
            <label for="P"> Prix unitaire : </label>
            <input id="P" type="number" value="0" min="0" name="inputP" required></input>
            <br/>
            <input type="submit" value="Valider" name="valid" />
            <input type="reset" value="Annuler" name="cancel" />
        </form>
    </body>
</html>
