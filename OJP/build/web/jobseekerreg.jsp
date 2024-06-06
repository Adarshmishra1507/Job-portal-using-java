<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>EM-AID</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
              integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/bootstrap.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <script src="js/bootstrap.bundle.js"></script>
        <script src="http://translate.google.com/translate_a/element.js?cb=loadGoogleTranslate"></script>
    </head>

    <body>
        <script>
            function loadGoogleTranslate() {
                new google.translate.TranslateElement("google_element");
            }
        </script>
        <div class="container-fluid">
            <div class="row bg-warning pt-2">
                <div class="col-sm-3 pt-2"><i class="fa-solid fa-phone"></i> Call Us: +91 9453318798</div>
                <div class="col-sm-3 pt-2"><i class="fa-solid fa-envelope"></i> Mail Us: ojp@gmail.com</div>
                <div class="col-sm-6 text-end">
                    <!-- ====social media icons==== -->
                    <ul class="smi">
                        <li><i class="fa-brands fa-facebook-f"></i></li>
                        <li><i class="fa-brands fa-instagram"></i></li>
                        <li><i class="fa-brands fa-twitter"></i></li>
                        <li><i class="fa-brands fa-google"></i></li>
                    </ul>
                </div>
            </div>
            <%@include file="navbar.jsp" %>
            <div class="row my-3">
                <%@include file="left.jsp" %>
                <div class="col-sm-8" style="min-height:600px;">                    
                    <script>
                        function validate()
                        {
                            var name = document.getElementById("name").value;
                            var experience = document.getElementById("experience").value;
                            var contactno = document.getElementById("contactno").value;
                            var password = document.getElementById("password").value;
                            var conpassword = document.getElementById("conpassword").value;
                            if (name == null || name == "")
                            {
                                alert("Name connot be blank");
                            }
                            else if (contactno == null || contactno == "")
                            {
                                alert("Contact No cannot be blank");
                            }
                            else if (isNaN(contactno))
                            {
                                alert("Contact No must be number");
                            }
                            else if (experience < 0)
                            {
                                alert("Give valid experience");
                            }
                            else if (contactno.length != 10)
                            {
                                alert("Contact No must be atleast 10 digits");
                            }
                            else if (password == null || password == "")
                            {
                                alert("Password cannot be blank");
                            }
                            else if (password.length < 6)
                            {
                                alert("Password must be atleast 6 characters");
                            }
                            else if (conpassword == null || conpassword == "")
                            {
                                alert("Confirm password cannot be blank");
                            }
                            else if (password != conpassword)
                            {
                                alert("Confirm password is not matched");
                            }
                            else
                            {
                                document.getElementById("jobseekerregform").submit();
                            }
                        }
                    </script>
                    <h1 style="text-align:center;color:bg-primary;">Job Seeker Registration Form</h1>
                    <form id="jobseekerregform" class="form-group" method="post" onsubmit="validate();
        event.preventDefault();" action="controller.jsp">
        <input type="hidden" name="page" value="jobseekerreg"/>
                        <table class="table" style="width:80%;margin:0 auto;">
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="name" class="form-label">Enter Name</label>
                                </td>
                                <td>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" />
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="gender" class="form-label">Select Gender</label>
                                </td>
                                <td>
                                    <input type="radio" class="form-check-input" id="gender" name="gender" value="Male" />Male
                                    <input type="radio" class="form-check-input" id="gender" name="gender" value="Female" />Female
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="address" class="form-label">Enter Address</label>
                                </td>
                                <td>
                                    <textarea class="form-control" id="address" rows="3" name="address"></textarea>
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="country" class="form-label">Select Country</label>
                                </td>
                                <td>
                                    <select class="form-select" aria-label="Default select example" name="country">
                                        <option selected>Select</option>
                                        <option value="India">India</option>
                                    </select>
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="state" class="form-label">Select State</label>
                                </td>
                                <td>
                                    <select class="form-select" aria-label="Default select example" name="state">
                                        <option selected>Select</option>
                                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                                    </select>
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="city" class="form-label">Select City</label>
                                </td>
                                <td>
                                    <select class="form-select" aria-label="Default select example" name="city">
                                        <option selected>Select</option>
                                        <option value="Lucknow">Lucknow</option>
                                    </select>
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="exparea" class="form-label">Select Expertise Area</label>
                                </td>
                                <td>
                                    <select class="form-select" aria-label="Default select example" name="exparea">
                                        <option selected>Select</option>
                                        <option value="Furniture">Furniture</option>
                                        <option value="Plumber">Plumber</option>
                                    </select>
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="experience" class="form-label">Enter Experience</label>
                                </td>
                                <td>
                                    <input type="number" class="form-control" id="experience" name="experience"
                                           placeholder="Enter Experience" />
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="contactno" class="form-label">Enter Contact No</label>
                                </td>
                                <td>
                                    <input type="number" class="form-control" id="contactno" name="contactno"
                                           placeholder="Enter Contact No" />
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="emailaddress" class="form-label">Enter Email Address</label>
                                </td>
                                <td>
                                    <input type="email" class="form-control" id="emailaddress" name="emailaddress"
                                           placeholder="Enter Email Address" />
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="password" class="form-label">Enter Password</label>
                                </td>
                                <td>
                                    <input type="password" class="form-control" id="password" name="password"
                                           placeholder="Enter Password" />
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="conpassword" class="form-label">Confirm Password</label>
                                </td>
                                <td>
                                    <input type="password" class="form-control" id="conpassword" name="conpassword"
                                           placeholder="Confirm Password" />
                                </td>
                            </div>
                            </tr>
                            <tr>
                            <div class="mb-3">
                                <td>
                                </td>
                                <td>
                                    <input type="submit" class="btn btn-success" value="Register" />
                                </td>
                            </div>
                            </tr>
                        </table>
                    </form>

                </div>
            </div>    
            <%@include file="footer.jsp" %>
        </div>
    </body>

</html>