<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
        <header>
        <h1>InstaGrim ! </h1>
        <h2>Your world in Black and White</h2>
        </header>
       <nav>
            <ul>
                <li><a href="/Instagrim/Login">Login</a></li>
            </ul>
        </nav>
        <article>
            <h3>Register as user</h3>
            <form method="POST"  action="Register">
                <%
                    Registering nr = (Registering) session.getAttribute("Registering");
                    if (nr != null){%>
                    <h4>Username already in use</h4>
                <%}%>
                <ul>
                    <li>User Name <input pattern=".{4,}" required title ="Username must be minimum 4 characters long" type="text" name="username"></li>
                    <li>Password <input pattern=".{8,}" required title="Password must be minimum 8 characters long" type="password" name="password"></li>
                    <li>First Name <input type="text" name="fname"></li>
                    <li>Last Name <input type="text" name="lname"></li>
                    <li>Email <input  type="email" name="email"></li>
                </ul>
                <br/>
                <input type="submit" value="Register"> 
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
