<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="http://127.0.0.1:8000/frontend/assets/"
  data-template="vertical-menu-template-free">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="{{ asset('css/app.css')}}">
    <title>Mechanic on Call</title>
    <!-- base:css -->
    <link rel="stylesheet" href="http://127.0.0.1:8000/frontend/vendors/typicons.font/font/typicons.css">
    <link rel="stylesheet" href="http://127.0.0.1:8000/frontend/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="http://127.0.0.1:8000/frontend/css/vertical-layout-light/style.css">
    <link rel="shortcut icon" href="http://127.0.0.1:8000/frontend/images/favicon.png" />
    <script src="https://js.pusher.com/7.2/pusher.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>




    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <!-- CSS Libraries -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="http://127.0.0.1:8000/frontend/website/lib/flaticon/font/flaticon.css" rel="stylesheet">
    <link href="http://127.0.0.1:8000/frontend/website/lib/animate/animate.min.css" rel="stylesheet">
    <link href="lhttp://127.0.0.1:8000/frontend/website/ib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <!-- Template Stylesheet -->
    <link href="http://127.0.0.1:8000/frontend/website/css/style.css" rel="stylesheet">

    
  </head>
    <body>




      
    <div id="app" class="container-scroller">
      
      <nav-component></nav-component>      
      <router-view></router-view>
      

    
    </div>








          <script src="{{ asset('js/app.js')}}"></script>
          <script src="http://127.0.0.1:8000/frontend/vendors/js/vendor.bundle.base.js"></script>
          <script src="http://127.0.0.1:8000/frontend/js/off-canvas.js"></script>
          <script src="http://127.0.0.1:8000/frontend/js/hoverable-collapse.js"></script>
          <script src="http://127.0.0.1:8000/frontend/js/template.js"></script>
          <script src="http://127.0.0.1:8000/frontend/js/settings.js"></script>
          <script src="http://127.0.0.1:8000/frontend/js/todolist.js"></script>
          <script src="http://127.0.0.1:8000/frontend/vendors/progressbar.js/progressbar.min.js"></script>
          <script src="http://127.0.0.1:8000/frontend/vendors/chart.js/Chart.min.js"></script>
          <script src="http://127.0.0.1:8000/frontend/js/dashboard.js"></script>




          <!-- JavaScript Libraries -->
          <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
              integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
              crossorigin="anonymous"></script>
          <script src="http://127.0.0.1:8000/frontend/website/lib/easing/easing.min.js"></script>
          <script src="http://127.0.0.1:8000/frontend/website/lib/owlcarousel/owl.carousel.min.js"></script>
          <script src="http://127.0.0.1:8000/frontend/website/lib/waypoints/waypoints.min.js"></script>
          <script src="http://127.0.0.1:8000/frontend/website/lib/counterup/counterup.min.js"></script>
      
          <!-- Contact Javascript File -->
          <script src="http://127.0.0.1:8000/frontend/website/mail/jqBootstrapValidation.min.js"></script>
          <script src="http://127.0.0.1:8000/frontend/website/mail/contact.js"></script>
      
          <!-- Template Javascript -->
          <script src="http://127.0.0.1:8000/frontend/website/js/main.js"></script>
        </body>
</html>
