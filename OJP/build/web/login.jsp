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
                            var userid = document.getElementById("userid").value;
                            var password = document.getElementById("password").value;
                            if (userid == null || userid == "")
                            {
                                alert("Userid connot be blank");

                            }
                            else if (password == null || password == "")
                            {
                                alert("Password cannot be blank");

                            }
                            else
                            {
                                document.getElementById("logform").submit();
                            }
                        }
                    </script>
                    <h1 style="text-align:center;color:bg-primary;">Login Form</h1>
                    <form id="logform" class="form-group" method="post" onsubmit="event.preventDefault();
        validate();" action="controller.jsp">                        
        <input type="hidden" name="page" value="login"/>
                        <table class="table" style="width:80%;margin:0 auto;">
                            <tr>
                            <div class="mb-3">
                                <td>
                                    <label for="userid" class="form-label">Enter UserId (Contact No)</label>
                                </td>
                                <td>
                                    <input type="text" class="form-control" id="userid" name="userid" placeholder="Enter UserId (Contact No)" />
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
                                </td>
                                <td>
                                    <input type="submit" class="btn btn-success" value="Login" />
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