<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<head>
<style type="text/css">
</style>
<title>Testcontact</title>

<head>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="keywords">


<!-- Google Fonts -->
<link
   href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
   rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../resources/vendor/aos/aos.css" rel="stylesheet">
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">
<link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css"
   rel="stylesheet">
<link href="../resources/vendor/glightbox/css/glightbox.min.css"
   rel="stylesheet">
<link href="../resources/vendor/swiper/swiper-bundle.min.css"
   rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../resources/css/style.css" rel="stylesheet">
</head>
<body>

   <!-- ======= main Section ======= -->
   <section id="main">
      <div class="main-container" data-aos="zoom-in" data-aos-delay="100">
      
   <!-- ======= Contact Section ======= -->
   <section id="contact" class="section-bg">

      <div class="container" data-aos="fade-up">

         <div class="section-header">
            <h2>CS CENTER</h2>
            <p> 월~금  09:00 ~ 18:00 </p>
            <p> (break time 13:00~14:00, 주말/공휴일 휴무) </p>
         </div>

         <div class="row contact-info">

            <div class="col-md-4">
               <div class="contact-address">
                  <i class="bi bi-geo-alt"></i>
                  <h3>Address</h3>
                  <address>그린컴퓨터아카데미</address>
               </div>
            </div>

            <div class="col-md-4">
               <div class="contact-phone">
                  <i class="bi bi-phone"></i>
                  <h3>Tel</h3>
                  <p>
                     <a href="tel:+123456789">+1 23 456 789 </a>
                  </p>
               </div>
            </div>

            <div class="col-md-4">
               <div class="contact-email">
                  <i class="bi bi-envelope"></i>
                  <h3>Email</h3>
                  <p>
                     <a href="mailto:info@example.com">info@example.com</a>
                  </p>
               </div>
            </div>

         </div>

         <div class="form">
            <form action="forms/contact.php" method="post" role="form"
               class="php-email-form">
               <div class="row">
                  <div class="form-group col-md-6">
                     <input type="text" name="name" class="form-control" id="name"
                        placeholder="Your Name" required>
                  </div>
                  <div class="form-group col-md-6 mt-3 mt-md-0">
                     <input type="email" class="form-control" name="email" id="email"
                        placeholder="Your Email" required>
                  </div>
               </div>
               <div class="form-group mt-3">
                  <input type="text" class="form-control" name="subject"
                     id="subject" placeholder="Subject" required>
               </div>
               <div class="form-group mt-3">
                  <textarea class="form-control" name="message" rows="5"
                     placeholder="Message" required></textarea>
               </div>
               <div class="my-3">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank
                     you!</div>
               </div>
               <div class="text-center">
                  <button type="submit">Send Message</button>
               </div>
            </form>
         </div>

      </div>
   </section>
   <!-- End Contact Section -->

      </div>
   </section>
   <!-- End main Section -->
   
	<%@include file="../layout/footer.jsp"%>
   
   <a href="#"
      class="back-to-top d-flex align-items-center justify-content-center"><i
      class="bi bi-arrow-up-short"></i></a>
   <!-- Vendor JS Files -->
   <script src="../resources/vendor/aos/aos.js"></script>
   <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
   <script src="../resources/vendor/php-email-form/validate.js"></script>
   <script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>

   <!-- Template Main JS File -->
   <script src="../resources/js/main.js"></script>
</body>

</html>