<%-- 
    Document   : crypto
    Created on : 5 juin 2018, 14:21:00
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
        <h1>Cryptographie JSP</h1>
        <hr/>
        <form method="POST">
            <label for="clair"> Nom en clair : </label>
            <input type="text" id="clair" name="clair" required>
            <br/>
            <label for="transla">Code César (translation) : </label>
            <input type="number" id="transla" min="0" max="25" name="translation" required>
            <br/>
            <input type="submit" value="Valider" />
            <input type="reset" value="Annuler" />   
        </form>
        <br/>
        <hr/>
        <br/> 
        <%
            if(request.getParameter("clair")!= null && request.getParameter("translation") != null){
                char alpha[] = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
                'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
                'w', 'x', 'y', 'z' };
                String texte = request.getParameter("clair") ;
                int cle = Integer.parseInt(request.getParameter("translation"));
                char clair2[] = new char[50];
               
                for (int i = 0; i < texte.length(); i++) {
                    clair2[i] = texte.charAt(i) ;
                }
                String result = "";
                for(char c : clair2){
                    for(int i=0 ; i < alpha.length ; i++){
                        if(c == alpha[i]){
                            result += alpha[(i+cle)%26];
                        }
                    }
                }
                
                out.print("Avant : " + request.getParameter("clair") + "<br/>Après : " + result + "<br/> Translation : " + request.getParameter("translation"));
            }
        %>
    </body>
</html>
