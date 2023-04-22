<%-- 
    Document   : home
    Created on : Feb 4, 2023, 4:37:13 PM
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
    body {
        background: #121212de;
        color: WHITE;
    }

    .navigation {
        font-size: larger;
    }

    .carousel {
        margin-bottom: 2rem;
    }

    /* Since positioning the image, we need to help out the caption */
    .carousel-caption {
        bottom: 3rem;
        z-index: 10;
    }

    /* Declare heights because of positioning of img element */
    .carousel-item {
        
        height: 15rem;
    }

    .carousel-item>img {
        position: absolute;
        top: 0;
        left: 0;
        min-width: 100%;
        height: 20rem;
    }

    @media (min-width: 40em) {

        /* Bump up size of carousel content */
        .carousel-caption p {
            margin-bottom: 1.25rem;
            font-size: 1.25rem;
            line-height: 1.4;
        }

        .featurette-heading {
            font-size: 50px;
        }
    }

    .started {
        font-size: 1.2em;
    }

    .content {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: fit-content;
        height: fit-content;
        text-align: center;
        background-color: #121212;
        box-sizing: border-box;
        padding: 10px;
        z-index: 100;
        display: none;
        /*to hide popup initially*/
    }

    .btnl:hover {
        background: green;
        color: white;
        border: solid 2px green;
    }

    .card {
        width: 29rem;
    }

    @media only screen and (max-width: 600px) {
        .card {
            width: 20rem;
        }
    }
    .bgi{
        background: url('https://mail.google.com/mail/u/0?ui=2&ik=f9a303c31d&attid=0.2&permmsgid=msg-f:1760599712247372228&th=186ee81c3828d9c4&view=att&disp=safe&realattid=f_lfc8a3bd0');
        background-position: center;
        background-size: cover;
    }
</style>

<body class="bgi">
    <main>
        <div class="navigation" >
            <nav class="navbar navbar-expand-lg navbar-dark " style="background: rgba(0,0,0,0.7)">
                <div class="container">
                    <a class="navbar-brand logo1" href="#"><img width="60%"
                            src="https://mail.google.com/mail/u/0?ui=2&ik=f9a303c31d&attid=0.5&permmsgid=msg-a:r7190999459416845006&th=186744b2fa3fb6d3&view=att&disp=safe&realattid=f_leebjg6d4"
                            alt="alt" /></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse  " id="navbarSupportedContent">
                        <div class="col-2"></div>
                        <div class="navbar-nav me-auto pr-1 mb-2 mb-lg-0 d-flex justify-content-center">
                            <h2>SOCIETY MANAGEMENT SYSTEM</h2>
                        </div>
                        <form class="d-flex">
                            <button type="button" class="btn rounded-5 btn-outline-light" data-toggle="modal"
                                data-target="#myModal">
                                Sign-In
                            </button>
                        </form>


                    </div>
                </div>
            </nav>
        </div>

     

        <div class="mt-3 slides" >
            <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item img1 active" >
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg"
                            aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <rect width="100%" height="100%" fill="rgba(0, 0, 0, 0.2)" />
                        </svg>

                        <div class="container">
                            <div class="carousel-caption text-start" style='color: black; text-shadow:2px 2px grey;'>
                                <h1 style="">Create your Society</h1>
                                <p>Create your own Society and add members in it.</p>
                                <!--<p><a class="btn btn-lg btn-light" href="#">Sign up today</a></p>-->
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item img2">
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg"
                            aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <rect width="100%" height="100%" fill="rgba(0, 0, 0, 0.2)" />
                        </svg>

                        <div class="container ">
                            <div class="carousel-caption" style='color: black; text-shadow:2px 2px grey;' >
                                <h1 >Join Society by Code.</h1>
                                <p></p>
                                <!--<p><a class="btn btn-lg btn-light" href="#">Learn more</a></p>-->
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item img3">
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg"
                            aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <rect width="100%" height="100%" fill="rgba(0, 0, 0, 0.2)" />
                        </svg>

                        <div class="container img">
                            <div class="carousel-caption text-end" style='color: black; text-shadow:2px 2px grey;' >
                                <h1 >Start using it now .</h1>
                                <p>Now you can use all the functionalities with one touch by clicking the options below.
                                </p>
                                <!--<p><a class="btn btn-lg btn-light" href="#">Browse gallery</a></p>-->
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <style>
            .ser1{
                background: url('data:image/jpeg;base64,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');
                background-size: 100%;
                background-repeat: no-repeat; 
            }
            .ser2{
                background: url('data:image/jpeg;base64,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');
                background-size: 100%;
                background-repeat: no-repeat; 
                color:black;
                font-weight: 700;
            }
            .ser3{
                background: url('data:image/jpeg;base64,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');
                background-size: 100% 90%;
                /*background-repeat:*/  
            }
        </style>
        <div class="service container ">
            <h1 align="center">Our Services</h1>
            <div class="row">
                <div class="col-md-4 mb-3">
                    <div class="card" style="width: 100%; background: rgba(0,0,0,0.5);">
                        <div class="card-body ser1">

                            <p class="card-text">Get connect with the the society members easily by registering here. Just ask 
                                for the society code from your society admin (secreatary) and register with that code</p>
                            <h5 align="center" class="card-title">Connect with Society Members</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card" style="width: 100%; background: rgba(0,0,0,0.5);">
                        <div class="card-body ser2">
                            <p class="card-text">Making any payments is much easy here. Admins can make there own payment structures.
                            Its much easy to view our dues and remains on portal. </p>
                            <h5 align="center" class="card-title">Easy Payment</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card" style="width: 100%; background: rgba(0,0,0,0.5);">
                        <div class="card-body ser3">
                            <p class="card-text">Many securing related issues would be solve due to manangement of society 
                                virtually. No loads of papers and labours. Do it by own.</p>
                            <h5 align="center" class="card-title">Enchance your Security</h5>
                        </div>
                    </div>
                </div>
            </div>

        </div>
<style>
    .contact{
        background: rgba(0,0,0,0.5);
    }
</style>
        <div class="contact container p-2 rounded-3">
            <!--Section: Contact v.2-->
            <section class="mb-4">

                <!--Section heading-->
                <h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
                <!--Section description-->
                <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to
                    contact us directly. Our team will come back to you within
                    a matter of hours to help you.</p>

                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-1"></div>
                    <div class="col-md-8 mb-md-0 mb-5">
                        <form id="contact-form" name="contact-form" action="contact" method="POST">

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-md-6">
                                    <div class="md-form mb-0">
                                        <input type="text" id="name" name="name" class="form-control">
                                        <label for="name" class="">Your name</label>
                                    </div>
                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-md-6">
                                    <div class="md-form mb-0">
                                        <input type="text" id="email" name="email" class="form-control">
                                        <label for="email" class="">Your email</label>
                                    </div>
                                </div>
                                <!--Grid column-->

                            </div>
                            <!--Grid row-->

                            <!--Grid row-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="md-form mb-0">
                                        <input type="text" id="subject" name="subject" class="form-control">
                                        <label for="subject" class="">Subject</label>
                                    </div>
                                </div>
                            </div>
                            <!--Grid row-->

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-md-12">

                                    <div class="md-form">
                                        <textarea type="text" id="message" name="message" rows="2"
                                            class="form-control md-textarea"></textarea>
                                        <label for="message">Your message</label>
                                    </div>

                                </div>
                            </div>
                            <!--Grid row-->

                        </form>

                        <div class="text-center text-md-left">
                            <button class="btn btn-success">Send</buttom>
                        </div>
                        <div class="status"></div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-3 text-center">
                        <ul class="list-unstyled mb-0">
                            <li><i class="bi bi-geo-alt-fill" style="font-size: 2em;"></i>
                                <p>Mumbai, India</p>
                            </li>

                            <li><i class="bi bi-telephone-fill" style="font-size: 2em;"></i>
                                <p>+91 9876543210</p>
                            </li>

                            <li><i class="bi bi-envelope-open-fill" style="font-size: 2em;"></i></i>
                                <p>shms@mitaoe.ac.in</p>
                            </li>
                        </ul>
                    </div>
                    <!--Grid column-->

                </div>

            </section>
            <!--Section: Contact v.2-->
        </div>
<style>
    .foot{
        height: 5rem;
        background: rgba(0,0,0,0.9);
    }
</style>
        <footer align="center" class="foot pt-3 mt-2">
            copyright © www.Housing.com. All rights reserved!
        </footer>

      
            <!-- The Modal -->
            <div class="modal fade" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header bg-dark">
                            <h3 class="modal-title">Let's Start</h3>

                            <button type="button" class="btn-close btn-dark" data-dismiss="modal"></button>
                        </div>
                        <style>
                            .amt {
                                font-size: 1.1em;
                                font-weight: 600;
                            }

                            .amt:hover {
                                font-weight: 500;
                                color: rgb(71, 192, 71, 0.5);

                            }

                            .active1 {
                                font-weight: 900;
                                color: rgb(71, 192, 71);
                            }
                        </style>
                        <!-- Modal body -->
                        <div class="modal-body bg-dark container-fluid">
                            <div class="d-flex justify-content-around mt-1 mb-3">
                                <div class="amt at active1">Admin Login</div>
                                <div class="amt mt ">Member Login</div>
                            </div>
                            <hr style="height: 1px; border: 1px solid white; ;">
                            <div class="logins container">
                                <div class="adminlogin">
                                    <form action="adminlogin" method="post">
                                        <div class="mb-3">
                                            <label for="exampleInputEmail1" class="form-label">Admin Username</label>
                                            <input name="auser" type="text" class="form-control"
                                                placeholder="admin username" id="exampleInputEmail1"
                                                aria-describedby="emailHelp">
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputPassword1" class="form-label">Admin Password</label>
                                            <input name="apass" type="password" class="form-control"
                                                placeholder="admin password" id="exampleInputPassword1">
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputPassword1" class="form-label">Society-code</label>
                                            <input name="scode" type="text" class="form-control"
                                                placeholder="society code" id="exampleInputPassword1">
                                        </div>

                                        <button align="center" type="submit"
                                            class="pl-4 pr-4 mt-3 btnl btn btn-outline-light">Login</button>
                                    </form>
                                </div>
                                <div class="memberlogin">
                                    <form action="memberlogin" method="post">
                                        <div class="mb-3">
                                            <label for="exampleInputEmail1" class="form-label">Member Username</label>
                                            <input name="muser" type="text" class="form-control"
                                                placeholder="member username" id="exampleInputEmail1"
                                                aria-describedby="emailHelp">
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputPassword1" class="form-label">Member
                                                Password</label>
                                            <input name="mpass" type="password" class="form-control"
                                                placeholder="member password" id="exampleInputPassword1">
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputPassword1" class="form-label">Society-code</label>
                                            <input name="scode" type="text" class="form-control"
                                                placeholder="society code" id="exampleInputPassword1">
                                        </div>
                                        <button align="center" type="submit"
                                            class="pl-4 pr-4 mt-3 btnl btn btn-outline-light">Login</button>

                                    </form>
                                </div>
                            </div>
                            <form action="registerpage">
                                <div align="right">Not registerred?
                                    <button type="submit" class="rb link-primary"
                                        style=" border: none; padding: 0px; margin: 0px; background: none; display: inline">Register</button>
                                    now
                                    <style>
                                        .rb {
                                            font-weight: 700;
                                        }

                                        .rb:hover {

                                            text-decoration: underline;
                                        }
                                    </style>
                            </form>
                        </div>
                    </div>

                    <div class="container-fluid">
                        <div class="row">

                            <button style="border-radius: 0px;" type="button" class="btn btn-lg btn-danger"
                                data-dismiss="modal">Close</button>
                        </div>

                    </div>

                </div>
            </div>
        </div>

        </div>
    </main>
</body>
<script>
    $(function () {
        $('.memberlogin').hide();
        $('.at').on('click', function () {
            $('.memberlogin').hide(1000);
            $('.adminlogin').show(1000);
            $('.at').addClass('active1');
            $('.mt').removeClass('active1');
        });
        $('.mt').on('click', function () {
            $('.adminlogin').hide(1000);
            $('.memberlogin').show(1000);
            $('.mt').addClass('active1');
            $('.at').removeClass('active1');
        });
    });
</script>

</html>