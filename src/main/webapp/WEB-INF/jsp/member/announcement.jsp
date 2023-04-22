<%-- 
    Document   : announcement
    Created on : Mar 17, 2023, 4:23:03 AM
    Author     : Yash
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
    body {
        background: url('https://mail.google.com/mail/u/0?ui=2&ik=f9a303c31d&attid=0.2&permmsgid=msg-f:1760599712247372228&th=186ee81c3828d9c4&view=att&disp=safe&realattid=f_lfc8a3bd0');
         color: WHITE;
        background-repeat: no-repeat;
  background-attachment: fixed;
  background-size:cover;
    }

    .activee {
        color: rgb(255, 255, 255);
        font-weight: 700;
        font-size: 1.2em
    }

    .sideitems {
        color: rgba(255, 255, 255, 0.5);
    }

    .sideitems:hover {}

    .sidebut {
        background: none;
        border: none;
        color: rgba(255, 255, 255, 0.5);
        padding: 0px;
        margin: 0px;
    }

    .sidebut:hover {
        background: none;
        border: none;
        padding: 0px;
        margin: 0px;
    }
    .bs:hover{
        background: green;
        border: 1px solid green;
        color: white;
    }
    .br:hover{
        background: red;
        border: 1px solid red;
        color: white;
    }
    .bgi {
        background: rgba(0, 0, 0, 0.4);
    }

    .si {
        background: rgba(0, 0, 0, 0.9);

    }
</style>
<%
    String user=(String) request.getAttribute("user");
    String scode=(String) request.getAttribute("scode");

    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS?characterEncoding=utf8", "root", "root");
            PreparedStatement stmt1 = con.prepareStatement("select * from ANNOUNCEMENT WHERE SCODE=?");
            stmt1.setString(1, scode);
            
            ResultSet rs = stmt1.executeQuery();
            String byuser=null,sub=null,mess=null;
            while (rs.next()) {
                byuser = rs.getString("USERNAME");
                sub = rs.getString("SUBJECT");
                mess = rs.getString("MESSAGE");
            }
            int oo=0;
            if(sub!=null){
            oo=1;
    }
%>
<body>

    <main>
        <div class="container-fluid">
            <div class=" row flex-nowrap">
                <div class="si col-auto col-md-3 col-xl-2 px-sm-2 px-0 ">
                    <div
                        class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                        <a href="/"
                            class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none ">
                            <span class="fs-5 d-none d-sm-inline ">SMS (MEMBER)</span>
                        </a>
                        <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
                            id="menu">
                            <li class="nav-item">
                                <br><br><br><br>
                                <form action="member_home" class="nav-link align-middle px-0 sideitems "> <button
                                        type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi-house-door  "></i> <span
                                            class="  ms-1 d-none d-sm-inline ">Home</span> </button>
                                </form>

                            </li >
                            <li class="mt-2">
                                <form action="member_members" class="nav-link px-0 align-middle sideitems "> <button
                                        type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi bi-person-vcard "></i> <span
                                            class=" ms-1 d-none d-sm-inline">Members</span></button>
                                </form>
                            </li>
                            <li class="mt-2">
                                <form action="member_payments" data-bs-toggle="collapse"
                                    class="nav-link px-0 align-middle  sideitems"><button type="submit"
                                        value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi-credit-card "></i> <span
                                            class="ms-1 d-none d-sm-inline ">Payments</span></button>
                                </form>

                            </li>
<!--                            <li>
                                <form action="" data-bs-toggle="collapse" class="nav-link px-0 align-middle sideitems">
                                    <button type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi-wallet"></i> <span class="ms-1 d-none d-sm-inline">Dues</span>
                                    </button>
                                </form>

                            </li>-->
                            <li class="mt-2">
                                <form action="member_announcement" data-bs-toggle="collapse"
                                    class="nav-link px-0 align-middle sideitems">
                                    <button type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi-megaphone activee"></i> <span
                                            class="ms-1 d-none d-sm-inline activee">Announcement</span>
                                    </button>
                                </form>
                            </li>
                            <li class="mt-2">
                                <form action="" data-bs-toggle="collapse" class="nav-link px-0 align-middle sideitems">
                                    <button type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi-exclamation-triangle"></i> <span
                                            class="ms-1 d-none d-sm-inline">Complaints</span>
                                    </button>
                                </form>
                            </li>
<!--                            <li>
                                <form action="" data-bs-toggle="collapse" class="nav-link px-0 align-middle sideitems">
                                    <button type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi-shield-check"></i> <span
                                            class="ms-1 d-none d-sm-inline">Security</span>
                                    </button>
                                </form>
                            </li>-->
<!--                            <li>
                                <form action="" data-bs-toggle="collapse" class="nav-link px-0 align-middle sideitems">
                                    <button type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi-calendar-event"></i> <span
                                            class="ms-1 d-none d-sm-inline">Events</span> </button>
                                </form>
                            </li>-->
                        </ul>
                        <hr>
                        <div class="dropdown pb-4">
                            <a href="#"
                                class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
                                id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fs-4 bi-person-circle"></i>
                                <span class="d-none d-sm-inline mx-1"> ${un}</span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                                <li><a class="dropdown-item" href="#">Settings</a></li>
                                <li><a class="dropdown-item" href="#">Profile</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li>
                                    <form class="dropdown-item" action="signout"><button type="submit" value="${userid}"
                                            name="id" class="sidebut nav-link" style="color:black;">Sign
                                            out</button></form>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col py-3 bgi">
                    <style>
                        .mtil {
                            font-size: 1.5em;
                            font-weight: 600;
                        }
                    </style>
                    <style>
                        .cst {
                            background: rgba(0, 0, 0, 0.6);
                        }
                    </style>
                    <div class="mt-3 container cst rounded-3 ">
                            <% if(oo==1){%>
                        <div class="row pt-3">
                            <span class="mtil d-flex justify-content-between ">
                                By~(Username): <%=byuser%>
                                <span class=" d-flex justify-content-end ">
                                    Admin
                                </span>
                            </span>
                        </div>
                        <hr class="dropdown-divider">
                        <div class="container">
                            <div class="row mt-4">
                                <div class="sub">
                                    <h4 align="center">Subject: <%=sub%></h4>
                                    
                                </div>
                            </div>
                            <style>
                                .mcon{
                                    background: rgba(0,0,0,0.5);

                                }
                                .bgi{
        background: url('https://mail.google.com/mail/u/0?ui=2&ik=f9a303c31d&attid=0.2&permmsgid=msg-f:1760599712247372228&th=186ee81c3828d9c4&view=att&disp=safe&realattid=f_lfc8a3bd0');
        background-position: center;
        background-size: cover;
    }
                            </style>
                            <style>
            .cst{
                background: rgba(0, 0, 0, 0.6);
            }
        </style>
                            <div class="row ">
                                <div class="message">
                                    <h5>Message: </h5>
                                    <div class="mcon mb-4 p-3  rounded-2">
                                        <%=mess%>
                                    </div>
                                </div>
                            </div>
                        </div>
                                   <%}else{ %>
                                   <div align="center"><h3>No Announcements yet!</h3></div>
                                   <%}%>
                    </div>
                </div>

            </div>
        </div>

    </main>
</body>

</html>