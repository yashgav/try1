<%-- 
    Document   : dashboard
    Created on : Feb 21, 2023, 4:46:19 PM
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
 <%
    String user=(String) request.getAttribute("user");
    String scode=(String) request.getAttribute("scode");
    
    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS?characterEncoding=utf8", "root", "root");
            PreparedStatement stmt1 = con.prepareStatement("SELECT * FROM Userdetails where scode=? and username=?");
            stmt1.setString(1, scode);
            stmt1.setString(2, user);
            ResultSet rs = stmt1.executeQuery();
            String fn=null,sn=null,fl=null;
            while (rs.next()) {
                fn = rs.getString("FNAME");
                sn=rs.getString("SNAME");
                fl=rs.getString("FLATNO");
            }
            
            PreparedStatement stmt2 = con.prepareStatement("SELECT * FROM announcement where scode=? ");
            stmt2.setString(1, scode);

            ResultSet rs2 = stmt2.executeQuery();

            String mess=null,subs=null;
            while (rs2.next()) {
                mess = rs2.getString("MESSAGE");
                subs = rs2.getString("SUBJECT");
            }
            System.out.println("mess: "+mess);
            System.out.println("subs: "+subs);
               
%> 
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

    .bgi {
        background: rgba(0, 0, 0, 0.4);
    }

    .si {
        background: rgba(0, 0, 0, 0.9);

    }
</style>

<body>

    <main>
        <div class="container-fluid">
            <div class=" row flex-nowrap">
                <div class="si col-auto col-md-3 col-xl-2 px-sm-2 px-0 ">
                    <div
                        class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                        <a href="/"
                            class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none ">
                            <span class="fs-4 d-none d-sm-inline ">SMS (ADMIN)</span>
                        </a>
                        <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
                            id="menu">
                            <li class="nav-item">
                                <br><br><br><br>
                                <form action="admin_home" class="nav-link align-middle px-0 sideitems "> <button
                                        type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi-house-door activee "></i> <span
                                            class="  ms-1 d-none d-sm-inline activee">Home</span> </button>
                                </form>

                            </li>
                            <li class="mt-2">
                                <form action="admin_members" class="nav-link px-0 align-middle sideitems "> <button
                                        type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi bi-person-vcard "></i> <span
                                            class=" ms-1 d-none d-sm-inline">Members</span></button>
                                </form>
                            </li>
                            <li class="mt-2">
                                <form action="admin_payments" data-bs-toggle="collapse"
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
                                <form action="admin_announcement" data-bs-toggle="collapse"
                                    class="nav-link px-0 align-middle sideitems">
                                    <button type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi-megaphone"></i> <span
                                            class="ms-1 d-none d-sm-inline">Announcement</span>
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
                        .snam {
                            font-size: 30pt;

                        }

                        @media only screen and (max-width: 800px) {
                            .snam {
                                font-size: 25pt;
                            }
                        }

                        @media only screen and (max-width: 630px) {
                            .snam {
                                font-size: 18pt;
                            }
                        }

                        .subj {
                            font-size: 1.2em;
                        }

                        .lim {
                            max-height: 200px;
                            overflow: auto;
                            background: rgba(0, 0, 0, 0.9);

                        }

                        .carbg {
                            background: rgba(0, 0, 0, 0.6);
                        }

                        .lim::-webkit-scrollbar {
                            width: 0.5em;

                        }

                        .lim::-webkit-scrollbar-track {
                            box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);

                        }

                        .lim::-webkit-scrollbar-thumb {
                            background-color: darkgrey;
                            outline: 1px solid slategrey;
                            border-radius: 50px;
                        }
                        .des::-webkit-scrollbar {
                            width: 0.5em;

                        }

                        .des::-webkit-scrollbar-track {
                            box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);

                        }

                        .des::-webkit-scrollbar-thumb {
                            background-color: darkgrey;
                            outline: 1px solid slategrey;
                            border-radius: 50px;
                        }

                        .codes {
                            font-size: 1.1em;
                        }

                        .coval {
                            background: rgba(0, 0, 0, 0.6);
                            padding: 1% 10%;
                            border-radius: 5px;
                            font-weight: 600;
                        }
                        .des{
                            margin: auto;
                            overflow: auto;
                            background: #000;
                            max-height: 100px;
                        }
                        .clickk{
                            font-weight: 700;
                        }
                    </style>
                    <h4 align="center" class="snam"> <%=sn%> </h4>

                    <div class="ann m-2 mt-4">
                        <div class="codes container mb-4">
                            <div class="row">
                                <div align="left" class="col-4"> <span class="coval">ADMIN</span> </div>
                                <div align="center" class="col-4"> <span class="coval"><%=scode%></span> </div>
                                <div align="right" class="col-4"> <span class="coval"><%=fl%></span> </div>
                            </div>
                        </div>
                        <div class="card carbg rounded-3" style="width: 100%;">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h5 class=" card-title">Latest Announcement </h5>
                                </div>
                                <hr class="dropdown-divider">
                                
                                <%if(subs==null){%>
                                <h6 class="card-subtitle mt-4 mb-3 text-success subj"> No Announcement done! </h6>
                                <%}else{%>
                                <h6 class="card-subtitle mt-4 mb-3 text-success subj"> <%=subs%> </h6>
                                <p class="card-text p-2 rounded-2 lim "><%=mess%></p>
                                
                                <%}%>
                            </div>
                            <div align="right" class="pr-5 pb-3 card-subtitle text-light clickk">
                                Go to Announcement section to view more.
                            </div>
                        </div>
                        <div class="events mt-3 card carbg rounded-3" style="width: 100%;">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h5 class=" card-title">Latest Event </h5>
                                </div>
                                <hr class="dropdown-divider">
                                <div class="container-fluid">
                                    <div class="row rounded-2 des p-3 ">
                                        <div>No events organized till now.</div>
<!--                                        <div class="col-md-2 ">date</div>
                                        <div class="col-md-4 ">title</div>
                                        <div class="col-md-6  ">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus fugit rerum ullam, totam enim ad   ?</div>-->
                                    </div>
                                </div>
                            </div>
                            <div align="right" class="pr-5 pl-5 pb-3 card-subtitle text-light clickk">
                                Go to Events section to view more.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </main>
</body>

</html>