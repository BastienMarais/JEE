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
        <h1> Application Web - Mutilplication ou addition </h1>
        <hr>
        Compléter les champs suivants :
        <form method="POST">
            <label for="table"> Table de : </label>
            <input id="table" type="number" name="table" min="0" required></input>
            <br/>
            <label for="limite"> Limite de la table : </label>
            <input id="limite" type="number"  name="limite" min="0" required></input>
            <br/>
            <label for="type"> type de table : </label>
            <select id="type" name="type" required>
                <option value="m">Multiplications </option>
                <option value="a">Additions</option>
            </select>
            <br/>
            <input type="submit" value="Valider" />
            <input type="reset" value="Annuler" />
        </form>
        
        <br/>
        <hr/>
        <br/>
        
        <%
            if(request.getParameter("type").equals("m")){
                for(int i = 0 ; i<= Integer.parseInt(request.getParameter("limite")); i++){
                    out.print( i + " * " + request.getParameter("table") + " = " + i * Integer.parseInt(request.getParameter("table")) + "<br/>" );
                }
            }
            else if(request.getParameter("type").equals("a")){
                for(int i = 0 ; i<= Integer.parseInt(request.getParameter("limite")); i++){
                    out.print( i + " + " + request.getParameter("table") + " = " + (i + Integer.parseInt(request.getParameter("table"))) + "<br/>" );
                }
            }
        %>
        <hr>
        
    </body>
</html>
