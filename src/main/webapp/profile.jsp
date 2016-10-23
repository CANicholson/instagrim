<%-- 
    Document   : Profile
    Created on : Oct 22, 2016, 10:51:56 PM
    Author     : Callum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header>
            <h1>InstaGrim ! </h1>
            <h2>Your world in Black and White</h2>
        </header>
        <nav>
            <ul>
            <li class="nav"><a href="/Instagrim/Upload">Upload</a></li>
                <%
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getLoggedin()) {
                    %>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                <form method="POST"  action="Logout">
                    <input type="submit" value="Logout">
                </form>
                <%}%>
                <%}%>
            </ul>
        </nav>
        
        <article>
            <h3>Profile</h3>
            Username = <%=lg.getUsername()%> </br>
            Full name = <%=lg.getFname()%> <%= lg.getLname()%></br>
            Email = <%=lg.getEmail()%>
        </article>
        
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
