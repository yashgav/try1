<%-- 
    Document   : login_error
    Created on : Mar 17, 2023, 2:31:29 PM
    Author     : Yash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

    <style>
        .bgi{
        background: url('https://mail.google.com/mail/u/0?ui=2&ik=f9a303c31d&attid=0.2&permmsgid=msg-f:1760599712247372228&th=186ee81c3828d9c4&view=att&disp=safe&realattid=f_lfc8a3bd0');
        background-position: center;
        background-size: cover;
        height: 88vh;
    }
    </style>
    <body class="bgi">
        <div align="center" class="mt-5">
            
        <h1>You Entered the Wrong login Credentials.</h1>
        <h2>Please Check if you entered wrong username and password or society code.</h2>
        <h3>Maybe you are member and you tried to enter your login credentials in admin panel, or vise-versa.</h3>
        <div>
            <form action="home">
                <button class="btn btn-success">Go to main page</button>
            </form>
        </div>
        </div>
        
    </body>
</html>
