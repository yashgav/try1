<%-- 
    Document   : createsocietyform
    Created on : Feb 8, 2023, 11:08:50 AM
    Author     : Yash
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
    <script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
    .mt-100 {
        margin-top: 100px;

    }

    .opt {
        color: black;
    }

    body {
        background: green;
        background:
            -webkit-linear-gradient(to right, green, green);
        background: linear-gradient(to right, green, green);
        color: green;
        min-height: 100vh
    }

    body {
        background: #121212de;
        color: WHITE;
        padding: 30px;
    }

    .sub:hover {
        background: green;
        border: green;
        color: white;
    }

    input {
        background: rgba(0, 0, 0, 0.5);
    }

    label {
        font-size: 1.2em;
    }

    .progress {
        background: none;
        color: black;
    }

    .pts {
        border-radius: 50px;
    }
    .red{
        color: red;
    }
    .rform{
        background: rgba(0, 0, 0, 0.5);
        padding: 30px;
        border-radius: 10px;
    }
    .bgi{
        background: url('https://mail.google.com/mail/u/0?ui=2&ik=f9a303c31d&attid=0.2&permmsgid=msg-f:1760599712247372228&th=186ee81c3828d9c4&view=att&disp=safe&realattid=f_lfc8a3bd0');
        background-position: center;
        background-size: cover;
    }
</style>

<body class="bgi">
    <div class="container rform">
        <div class="row ">

            <!-- <style>
             .divider{
                /* flex-grow: 1; */
                z-index: -1;
                height: 5px;
                width: 33%;
                margin-left: -10px;
                margin-right: -10px;
                border: 2px solid white;
                background: white;
                border-color: white;
             }
            </style>

            <div class="">
                <div class="d-flex   ">
                    <div class="pts p-2 bg-success">Society Details</div>
                    <hr class="divider">
                    <div class="pts p-2 bg-dark">Society Logins</div>
                    <hr class="divider">
                    <div class="pts p-2 mr-4 bg-dark">Admin details</div>
                </div>
            </div> -->
          
            <h2 align="center" class="mb-2" style="color:rgb(29, 184, 29) ; font-family: 'Times New Roman', Times, serif; font-weight: 700;">Register Here <br></h2>

            <form action="registerpage_next" method="post" class="row lg-3">

                <div class="col-md-3 ">
                    <br>
                    <label for="validationDefaultUsername" class="form-label">Gender <span class="red">*</span></label>
                    <div class="d-flex justify-content-around">
                        <div class="form-check form-check-inline ">
                            <input class="form-check-input" type="radio"  name="gender" id="inlineRadio1" value="Male" required>
                            <label class="form-check-label" for="inlineRadio1">Male</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="Female" required>
                            <label class="form-check-label" for="inlineRadio2">Female</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="Other" required>
                            <label class="form-check-label" for="inlineRadio2">Other</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 offset-md-1">
                    <br>
                    <label for="validationDefault05" class="form-label">Martial-Status <span class="red">*</span></label>
                    <div class="d-flex justify-content-around">
                        <div class="form-check form-check-inline ">
                            <input class="form-check-input" type="radio"  name="martial" id="inlineRadio1" value="Married" required>
                            <label class="form-check-label" for="inlineRadio1">Married</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="martial" id="inlineRadio2" value="un-Married" required>
                            <label class="form-check-label" for="inlineRadio2">un-Married</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 offset-md-1">
                    <br>
                    <label for="validationDefaultUsername" class="form-label">Register as? <span class="red">*</span></label>
                    <div class="d-flex justify-content-around">
                        <div class="am form-check form-check-inline ">
                            <input class=" form-check-input" type="radio"  name="role" id="inlineRadio1" value="Member" required>
                            <label class="form-check-label" for="inlineRadio1">Member</label>
                        </div>
                        <div class="am form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="role" id="inlineRadio2" value="Admin" required>
                            <label class="form-check-label" for="inlineRadio2">Admin</label>
                        </div>
                    </div>
                    
                    
                </div>
                <div><br></div>
                <div class="col-md-4">
                    <br>
                    <label for="validationDefaultUsername" class="form-label">First Name <span class="red">*</span></label>
                    <input name="fname" type="text" class="form-control" placeholder="enter first name" id="validationDefault02" required>
                </div>
                <div class="col-md-4">
                    <br>
                    <label for="validationDefaultUsername" class="form-label">Middle Name <span class="red">*</span></label>
                    <input name="mname" type="text" class="form-control" placeholder="enter middle name" id="validationDefault02" required>
                </div>
                <div class="col-md-4">
                    <br>
                    <label for="validationDefaultUsername" class="form-label">Last Name <span class="red">*</span></label>
                    <input name="lname" type="text" class="form-control" placeholder="enter last name" id="validationDefault02" required>
                </div>
                <div class="col-md-4">
                    <br>
                    <label for="validationDefaultUsername" class="form-label">Date of Birth <span class="red">*</span></label>
                    <input name="dob" type="date"  class="form-control" id="validationDefault02" required>
                </div>
                
                <div class="col-md-4">
                    <br>
                    <label for="validationDefaultUsername" class="form-label">Age <span style="color: rgba(255, 255, 255, 0.3);">(Should be more than 18)</span> <span class="red">*</span></label>
                    <input name="age" type="number" min="18" placeholder="enter age" class="form-control" id="validationDefault02"
                        required>
                </div>
                <div class="col-md-4">
                    <br>
                    <label for="validationDefault03" class="form-label">City <span class="red">*</span></label>
                    <input name="city" type="text" class="form-control" placeholder="enter city" id="validationDefault03" required>
                </div>
                <div class="col-md-4">
                    <br>
                    <label for="validationDefault03" class="form-label">District <span class="red">*</span></label>
                    <input name="district" type="text" class="form-control" placeholder="enter district" id="validationDefault03" required>
                </div>
                <div class="col-md-4">
                    <br>
                    <label for="validationDefault04" class="form-label">State <span class="red">*</span></label>
                    <input name="state" type="text" class="form-control" placeholder="enter state" id="validationDefault02" required>
                </div>
                <div class="col-md-4">
                    <br>
                    <label for="validationDefault05" class="form-label">Pin-Code <span class="red">*</span></label>
                    <input name="pincode" type="text" class="form-control" placeholder="enter pincode" id="validationDefault05" required>
                </div>
                <div class="col-md-6">
                    <br>
                    <label for="validationDefault05" class="form-label">Email<span class="red">*</span></label>
                    <input name="email" type="email" class="form-control" placeholder="enter email address" id="validationDefault05" required>
                </div>
                <div class="col-md-6">
                    <br>
                    <label for="validationDefault05" class="form-label">Flat No<span class="red">*</span></label>
                    <input name="flatno" type="text" class="form-control" placeholder="enter flat no" id="validationDefault05" required>
                </div>



                <!-- <div class="col-12">
                    <div class="md-4">

                        <div class="row d-flex justify-content-center mt-100">
                            <label for="validationCustom04" class="form-label">Select activities which you want to
                                manage in your society</label>
                            <div class="opt col-md-12">
                                <select id="choices-multiple-remove-button" name="activities"
                                    placeholder="Select activities" multiple>
                                    <option value="HTML">HTML</option>
                                    <option value="Jquery">Jquery</option>
                                    <option value="CSS">CSS</option>
                                    <option value="Bootstrap 3">Bootstrap 3</option>
                                    <option value="Bootstrap 4">Bootstrap 4</option>
                                    <option value="Java">Java</option>
                                    <option value="Javascript">Javascript</option>
                                    <option value="Angular">Angular</option>
                                    <option value="Python">Python</option>
                                    <option value="Hybris">Hybris</option>
                                    <option value="SQL">SQL</option>
                                    <option value="NOSQL">NOSQL</option>
                                    <option value="NodeJS">NodeJS</option>
                                </select>
                            </div>
                        </div>

                        <div class="invalid-feedback field">
                            Please fill this field!
                        </div>
                    </div>
                </div> -->
                <div><br><br><br></div>
                <h2 align="center" class="mb-2" style="color:rgb(29, 184, 29) ; font-family: 'Times New Roman', Times, serif; font-weight: 700;">Login Credentials<br></h2>

                <div class="col-md-4">
                    <br>
                    <label for="validationDefault05" class="form-label">Set-Username <span class="red">*</span></label>
                    <input name="username" placeholder="create username" type="text" class="form-control" id="validationDefault05" required>
                </div>
                <div class="col-md-4">
                    <br>
                    <label for="validationDefault05" class="form-label">Set-Password <span class="red">*</span></label>
                    <input name="password" placeholder="create password" type="password" class="form-control" id="validationDefault05" required>
                </div>
                <div class="col-md-4">
                    <br>
                    <div class="Member box">
                        <label for="validationDefault05" class="form-label">Enter Society Code <span class="red">*</span></label>
                        <input name="mscode" placeholder="enter society code given by admin" type="text" class="form-control" id="validationDefault05" >
                    </div>
                    <div class="Admin box">
                        <label for="validationDefault05" class="form-label">Set- Society Code <span class="red">*</span></label>
                        <input name="ascode" type="text" placeholder="create society code" class="form-control" id="validationDefault05" >
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="Admin box">
                        <br>
                        <label for="validationDefault05" class="form-label">Society Name <span class="red">*</span></label>
                        <input name="sname" type="text" placeholder="enter society name" class="form-control" id="validationDefault05" >
                    </div>
                </div>
                


                <div class="col-12">

                    <div class="form-check">
                        <br><br>
                        <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                        <label class="form-check-label" for="invalidCheck2">
                            Agree to terms and conditions
                        </label>
                    </div>
                    
                </div>
        </div> <br>
        <button style=" width: 97%; " class="sub btn btn-outline-light" type="submit">SUBMIT</button>

        </form>
    </div>

</body>
<script>
    $(document).ready(function () {

        var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
            removeItemButton: true
        });
        $('.box').hide();
        $('.am input[type="radio"]').click(function(){
            var inputValue = $(this).attr("value");
            var targetBox = $("." + inputValue);
            $(".box").not(targetBox).hide();
            $(targetBox).show();
        });
    });


</script>



</html>