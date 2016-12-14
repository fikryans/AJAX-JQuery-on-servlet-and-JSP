<%-- 
    Document   : index
    Created on : Dec 14, 2016, 9:19:03 PM
    Author     : TutorialPedia.NET
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Penggunaan Ajax pada servlet dan JSP</title>
        <script src="http://code.jquery.com/jquery-latest.js">   
        </script>
        <script type="text/javascript">
            $(document).ready(function() {                        
                $('#submit').click(function(event) {  
                    var username=$('#user').val();
                 $.get('AjaxServlet',{user:username},function(responseText) { 
                        $('#welcometext').text(responseText);         
                    });
                });
            });
        </script>
    </head>
    <body>
        <form id="form1">
            <h1>Contoh Penggunaan AJAX JQuery Pada Servlet dan JSP</h1>
                Masukkan Nama anda:
                <input type="text" id="user"/>
                <input type="button" id="submit" value="Ajax Submit"/>
                 
                 
                <div id="welcometext">
            </div>
        </form>
    </body>
</html>
