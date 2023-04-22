<%-- 
    Document   : payments
    Created on : Mar 12, 2023, 2:52:08 PM
    Author     : Yash
--%>

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
    .bgi{
        background: rgba(0,0,0,0.4);
    }
    .si{
        background: rgba(0,0,0,0.9);
    }
</style>

<body>

    <main>
        <div class="container-fluid">
            <div class=" row flex-nowrap">
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
                                        <i class="fs-4 bi-house-door  "></i> <span
                                            class="  ms-1 d-none d-sm-inline ">Home</span> </button>
                                </form>

                            </li>
                            <li class="mt-2">
                                <form action="admin_members" class="nav-link px-0 align-middle sideitems "> <button
                                        type="submit" value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi bi-person-vcard "></i> <span
                                            class=" ms-1 d-none d-sm-inline ">Members</span></button>
                                </form>
                            </li>
                            <li class="mt-2">
                                <form action="admin_payments" data-bs-toggle="collapse"
                                    class="nav-link px-0 align-middle  sideitems"><button type="submit"
                                        value="${userid}" name="id" class="sidebut nav-link">
                                        <i class="fs-4 bi-credit-card activee"></i> <span
                                            class="ms-1 d-none d-sm-inline activee">Payments</span></button>
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
                        .mtil {
                            font-size: 1.5em;
                            font-weight: 600;
                        }
                    </style>
                    <style>
            .cst{
                background: rgba(0, 0, 0, 0.6);
            }
        </style>
                    <div class="mt-3 container cst rounded-3 ">
                        <div class="row pt-3">
                            <span class="mtil d-flex justify-content-between ">
                                Light Bill
                            </span>
                        </div>
                        <hr class="dropdown-divider">
                        <form class="row needs-validation" action="lightbilladd" >
                            <div class="mb-3 col-lg-4">
                                <label for="exampleInputEmail1" class="form-label">Flat No</label>
                                <input name="flatno" type="text" class="form-control" placeholder="flat no" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" required>
                            </div>
                            <div class="col-lg-4">
                                <label for="validationCustomUsername" class="form-label">Light bill</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text" id="inputGroupPrepend"><i
                                        class="bi bi-currency-rupee"></i></span>
                                        <input type="number" name="lightbill" class="form-control" id="validationCustomUsername"
                                        aria-describedby="inputGroupPrepend" placeholder="light bill" required>
                                        
                                </div>
                            </div>
                            <div class="mb-3 col-lg-4">
                                <label for="exampleInputEmail1" class="form-label">Set-Due Date</label>
                                <input name="duedate" type="date" class="form-control" placeholder="due date" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" required>
                            </div>
                            <div class="mb-3 col-lg-12">
                                <label for="exampleInputEmail1" class="form-label">Description</label>
                                
                                <textarea  style="color: black;" name="desc" type="date" class="form-control" placeholder="any description (eg. Arpil month's LightBill). Only 100 words " ></textarea>
                                    
                            </div>
                            <div class="col-lg p-2"align="center" style="color: rgba(255, 255, 255, 0.5);">
                                (This light bill will be forwarded on given flat no.'s userid. He has to pay this bill
                                amount.)
                            </div>
                            <div class="col-12">
                                <div class="row m-1 pb-2">

                                    <button class=" btn btn-outline-light brset col-6 " type="reset">Reset</button>
                                    <button class=" btn btn-outline-light bsub col-6 " value="${userid}" onclick="billsub()"  name="id" type="submit" >Add</button>
                                </div>
                            </div>
                        </form>

                    </div>
                                <style>
                                    .res{
                                        background: rgba(0,0,0,0.6);
                                        margin: 1%;
                                        
                                    }
                                </style>
                                <% 
                                String result=(String) request.getAttribute("res");
                                System.out.println("res: "+result);
                                
if(result=="true"){ %>
                                <div class="res r1 rounded-3" align="center">
                                    This bill is forwarded to specified flat owner !
                                </div>
                                <%} else { %>
                                <div class="res r2 rounded-3" align="center">
                                    Provide a proper flat no !
                                </div> 
                                <% } %>
                    <div class="mt-5 pb-2 container cst rounded-3 ">
                        <div class="row pt-3">
                            <span class="mtil d-flex justify-content-between pb-3">
                                Maintainance Bill
                            </span>
                        </div>
<style>
    .res{
        font-size: 1.5em;
        font-weight: 700;
    }
    .r1{
        color: green;
    }
    .r2{
        color: red;
    }
    .maintable .row{
        padding: 2px;
    }
    .tt{
        font-weight: 800;
        margin-right: 3px;
        /* font-size: 1.1em; */
        /* font-style: italic; */
        color: rgba(214, 210, 210, 0.8);
       
    }
</style>
                        <div class="maintable container bg-gradient p-2 pl-2 pr-2 rounded-3">
                            <div class="row tt">
                                <div class="col-8">Details</div>
                                <div class="col-4">Amount</div>
                            </div>
                            <hr class="dropdown-divider bg-dark-subtle rounded-5" style="height: 3px;">
                            <div class="row">
                                <div class="col-8">General Services</div>
                                <div class="col-4"><i class="bi bi-currency-rupee"></i>1200</div>
                            </div>
                            <hr class="dropdown-divider">
                            <div class="row">
                                <div class="col-8">Water Charges</div>
                                <div class="col-4"><i class="bi bi-currency-rupee"></i>500</div>
                            </div>
                            <hr class="dropdown-divider">
                            <div class="row">
                                <div class="col-8">Muncipal Tax</div>
                                <div class="col-4"><i class="bi bi-currency-rupee"></i>200</div>
                            </div>
                            <hr class="dropdown-divider">
                            <div class="row">
                                <div class="col-8">Cleaning Charges</div>
                                <div class="col-4"><i class="bi bi-currency-rupee"></i>350</div>
                            </div>
                            <hr class="dropdown-divider">
                            <div class="row">
                                <div class="col-8">Electricity Charges</div>
                                <div class="col-4"><i class="bi bi-currency-rupee"></i>550</div>
                            </div>
                            <hr class="dropdown-divider">
                            <div class="row">
                                <div class="col-8">Parking Charges</div>
                                <div class="col-4"><i class="bi bi-currency-rupee"></i>700</div>
                            </div>
                            <hr class="dropdown-divider">
                            <div class="row">
                                <div class="col-8">Lift Charges</div>
                                <div class="col-4"><i class="bi bi-currency-rupee"></i>300</div>
                            </div>
                            <hr class="dropdown-divider bg-dark-subtle rounded-5" style="height: 3px;">
                            <div class="row tt">
                                <div class="col-8">Total Charges</div>
                                <div class="col-4"><i class="bi bi-currency-rupee"></i>3800</div>
                            </div>
                            <!-- <hr class="dropdown-divider bg-dark-subtle rounded-5" style="height: 3px;"> -->
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="mb-3 col-md-12">
                                                        <label for="exampleInputEmail1" class="form-label">Set-Due Date</label>
                                                        <input name="duedate" type="date" class="form-control" placeholder="due date" id="exampleInputEmail1"
                                                            aria-describedby="emailHelp" required>
                                                    </div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-12">
                                <div class="row  pb-2">

                                    <button id="scroll" class=" btn btn-secondary  col-6 ">Change</button>
                                    <form action="maintainance_forward" class="col-6">
                                    <button class=" btn btn-outline-light bsub col-12 " value="${userid}" name="id" type="submit">Forward</button>
                                    </form>
                                </div>
                            </div>
                            </div>
                        </div>
                        
                        <form class="row yash pt-3" action="maintainancebill">
                            <div class="mb-3 col-lg-4 ">
                                <label for="validationCustomUsername" class="form-label">General Services</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text" id="inputGroupPrepend"><i
                                            class="bi bi-currency-rupee"></i></span>
                                            <input type="number" name="general" class="form-control" id="validationCustomUsername"
                                        aria-describedby="inputGroupPrepend" placeholder="general maintainance charges"
                                        required>
                                </div>
                            </div>
                            <div class="mb-3 col-lg-4">
                                <label for="exampleInputEmail1" class="form-label">Water Charges</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text" id="inputGroupPrepend"><i
                                            class="bi bi-currency-rupee"></i></span>
                                            <input type="number" class="form-control" name="water" id="validationCustomUsername"
                                        aria-describedby="inputGroupPrepend" placeholder="water charges" required>
                                </div>
                            </div>
                            <div class="mb-3 col-lg-4">
                                <label for="exampleInputEmail1" class="form-label">Muncipal Tax</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text" id="inputGroupPrepend"><i
                                            class="bi bi-currency-rupee"></i></span>
                                            <input type="number" class="form-control" name="muncipal" id="validationCustomUsername"
                                        aria-describedby="inputGroupPrepend" placeholder="muncipal tax" required>
                                </div>
                            </div>
                            <div class="mb-3 col-lg-3">
                                <label for="exampleInputEmail1" class="form-label">Cleaning Charges</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text" id="inputGroupPrepend"><i
                                            class="bi bi-currency-rupee"></i></span>
                                            <input type="number" class="form-control" id="validationCustomUsername" name="clean"
                                        aria-describedby="inputGroupPrepend" placeholder="cleaning bill" required>
                                </div>
                            </div>
                            <div class="mb-3 col-lg-3">
                                <label for="exampleInputEmail1" class="form-label">Electricity Charges</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text" id="inputGroupPrepend"><i
                                            class="bi bi-currency-rupee"></i></span>
                                            <input type="number" class="form-control" id="validationCustomUsername" name="electricity"
                                        aria-describedby="inputGroupPrepend" placeholder="electricity bill" required>
                                </div>
                            </div>

                            <div class="mb-3 col-lg-3">
                                <label for="exampleInputEmail1" class="form-label">Parking Charges</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text" id="inputGroupPrepend"><i
                                            class="bi bi-currency-rupee"></i></span>
                                            <input type="number" class="form-control" id="validationCustomUsername" name="parking"
                                        aria-describedby="inputGroupPrepend" placeholder="parking charges" required>
                                </div>
                            </div>
                            <div class="mb-3 col-lg-3">
                                <label for="exampleInputEmail1" class="form-label">Lift Charges</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text" id="inputGroupPrepend"><i
                                            class="bi bi-currency-rupee"></i></span>
                                            <input type="number" class="form-control" id="validationCustomUsername" name="lift"
                                        aria-describedby="inputGroupPrepend" placeholder="lift charges" required>
                                </div>
                            </div>
                            <p align="center" style="padding-left: 20px; color: rgba(255, 255, 255, 0.5);">(Enter <i class="bi bi-currency-rupee"></i>0 if charges not applicable)</p>
                            <div class="col-12">
                                <div class="row m-1">
                                    <button class=" btn btn-outline-light brset col-6 " type="reset">Reset</button>
                                    <button class=" btn btn-outline-light bsub col-6 "  value="${userid}" name="id" type="submit">Apply</button>
                                </div>
                            </div>
                        </form>
                   
                    </div>
                </div>
            </div>
        </div>

<style>
    .bsub:hover{
        background: green;
        color: white;
        border: 2px solid green;
    }
    .brset:hover{
        background: red;
        color: white;
        border: 2px solid red;
    }
</style>

    </main>
</body>
<script>
    $(function () {
        $('.yash').hide();
        $('#scroll').click(function () {
            $('.yash').toggle('slow');
        });
        var form = document.getElementById('f');

    
    });
</script>

</html>