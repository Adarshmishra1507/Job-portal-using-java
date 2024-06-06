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
      <div class="col-sm-3 pt-2"><i class="fa-solid fa-phone"></i> Call Us: +91 8318299193</div>
      <div class="col-sm-3 pt-2"><i class="fa-solid fa-envelope"></i> Mail Us: adarshmishrabbd@gmail.com</div>
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
    <%@include file="slider.jsp" %>
    <%@include file="main.jsp" %>
    <%@include file="footer.jsp" %>
  </div>
</body>

</html>