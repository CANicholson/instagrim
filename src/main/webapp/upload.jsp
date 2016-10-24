<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
<%LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");%>
     <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%if (lg != null) {%>
        <style>
         body{
             color: <%=lg.getColor()%>;
         }
         footer{
             color: <%=lg.getColor()%>;
         }
         <%}%>
     </style>
    </head>
    <body>
         <h1>InstaGrim ! </h1>
            <%if (lg != null) {%>
            <h2>Your world in <%=lg.getColor()%> and white</h2>
            <%}else{%>
            <h2>Your world in black and white</h2>
            <%}%>
        <nav>
            <ul>
                <li class="nav"><a href="/Instagrim/Upload">Upload</a></li>
                <%                        
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getLoggedin()) {
                    %>
                <li><a href="/Instagrim/Profile">Profile</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                <form method="POST"  action="Logout">
                    <input type="submit" value="Logout">
                </form>
                <%}%>
                <%}%>
            </ul>
        </nav>
 
        <article>
            <h3>File Upload</h3>
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

                <br/>
                <input type="submit" value="Press"> to upload the file!
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
