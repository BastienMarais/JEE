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
        <h1> Application Web - login </h1>
        <hr>
        Compléter les champs suivants :
        <form action="action.jsp" method="POST">
            <label for="login"> Login : </label>
            <input id="login" type="text" name="login" required></input>
            <br/>
            <label for="mdp"> Mot de passe : </label>
            <input id="mdp" type="password"  name="mdp" required></input>
            <br/>
            <input type="submit" value="Se connecter" />
        </form>
    </body>
</html>
