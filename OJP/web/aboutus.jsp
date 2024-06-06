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
                    <h1 style="text-align:center;">About Us</h1>
                    <p style="text-align:left;">
                        Welcome to our website! We are a team of professionals dedicated to providing high-quality services to our valued customers. Our goal is to make your life easier and more convenient by offering a wide range of services that cater to your specific needs.<br><br>

                        At our website, we understand the importance of reliable and efficient services. That's why we strive to provide the best experience possible to our customers. Our team is committed to ensuring that all your requirements are met with the utmost care and attention to detail.<br><br>

                        Our services are designed to simplify your life, whether it's finding the right labour for your job or managing your bookings effortlessly. We have a range of options available to suit your needs, and we are always happy to help you find the perfect solution.<br><br>

                        We take pride in our customer service, and our team is always available to assist you with any queries or concerns you may have. We believe that communication is key, and we are committed to keeping you informed and updated throughout your journey with us.<br><br>

                        Our website is easy to navigate, and we offer a seamless booking process to ensure that your experience with us is smooth and hassle-free. We believe in transparency, and we are upfront about our pricing and services, so you can make an informed decision.<br><br>

                        Thank you for choosing our website. We look forward to serving you and providing you with the best experience possible. If you have any questions or feedback, please don't hesitate to get in touch with us.</p>

                </div>
            </div>    
            <%@include file="footer.jsp" %>
        </div>
    </body>

</html>