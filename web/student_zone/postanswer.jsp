<%-- 
    Document   : postanswer
    Created on :1 DEC, 2022, 10:20:37 AM
    Author     : AMAN KUMARI
--%>
 
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if (session.getAttribute("studentid") == null || session.getAttribute("studentid") == "") {
        response.sendRedirect("../index.jsp");
    } else {

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Favicon -->
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Site Metas -->
        <title>LU:STUDENT : HOME</title>
        <meta name="keywords" content="LU,LU LUCKNOW, best engineering college, lu lucknow,engineering in jankipuram extension, engineering in lucknow, engineering in chandauli,amantech@gmail,kamlesh developer,kamleshkumarbind"/>
        <meta name="description" content=" LU::LUCKNOW : HOME ">
        <meta name="author" content="luchandauli.ac.in, getamantech.in/"/>

        <!-- Site Icons -->
        <link rel="shortcut icon" href="#" type="image/x-icon" />
        <link rel="apple-touch-icon" href="#" />
        <link href="https://fonts.googleapis.com/css2?family=Bungee+Inline&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <!-- Pogo Slider CSS -->
        <link rel="stylesheet" href="css/pogo-slider.min.css" />
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css" />
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css" />
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css" />

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/student-style.css">

        <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        
        
        
        <style>

            .first-content textarea {
                margin-bottom: 20px;
                padding-left: 15px;
                width: 100%;
                max-width: 100%;
                max-height: 180px;
                height: 140px;
                display: inline-block;
                line-height: 40px;
                font-size: 13px;
                color: #aaa;
                background-color: #f4f4f4;
                border: none;
                outline: none!important;
                border-radius: 0;
                box-shadow: none;
            }

            .first-content textarea:focus {
                outline: none!important;
                box-shadow: none;
            }

            .first-content button {
                display: inline-block;
                background-color: #00c4c7;
                color: #343434;
                font-size: 13px;
                padding: 12px 18px;
                border-radius: 3px;
                text-decoration: none;
                outline: none;
                margin-bottom: 0px;
            }

            .first-content button:hover {
                background-color: transparent;
                border: 1px solid #00c4c7;
                -moz-transition: all 0.2s linear;
                -o-transition: all 0.2s linear;
                -webkit-transition: all 0.2s linear;

            }
             
        </style>

    </head>

    <body id="inner_page" data-spy="scroll" data-target="#navbar-wd" data-offset="98">

        <!-- LOADER -->
        <div id="preloader">
            <div class="loader">
                <img src="images/loader.gif" alt="#" />
            </div>
        </div>
        <!-- end loader -->
        <!-- END LOADER -->

        <!-- Start header -->
        <header class="top-header">
            <div class="header_top">

                <div class="container">
                    <div class="row">
                        <div class="logo_section">
                            <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="image"></a>
                        </div>
                        <div class="site_information">
                            <ul>
                                <li><a href="mailto:getamantech@gmail.com"><img src="images/mail_icon.png" alt="#" />amantech@gmail.com</a></li>
                                <li><a href="tel:getamantech@gmail.com"><img src="images/phone_icon.png" alt="#" />+918112740805</a></li>
                                <li><a class="join_bt" href="..//index.jsp" >Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>

        </header>
        <!-- End header -->

    <body>

        <div class="overlay"></div>
        <section class="top-part">
            <video controls autoplay loop>
                <source src="videos/video.mp4" type="video/mp4">
                <source src="videos/video.ogg" type="video/ogg">
                Your browser does not support the video tag.
            </video>
        </section>

        <section class="cd-hero">
    `               <span class="cd-marker item-1"></span>
    <div class="md-col-12" >
                    <ul>
                        <li align="center" ><a href="studenthome.jsp"><div class="image-icon"><img src="images/cancel.png"></div><h4>GO BACK TO HOMEPAGE</h4></a></li>
                         
                    </ul>
    </div>
            <ul class="cd-hero-slider">

                <li class="selected">
                    <div class="heading">

                        <h1><% out.println("Welcome " + session.getAttribute("studentid"));%></h1>

                        <span>Welcome to Lucknow University</span>
                    </div>
                    <div class="cd-full-width first-slide">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="content first-content">
                                        <h3>Answer the Question</h3>
                                         <div class="row">
                                            <div class="col-md-12 fas">
                                                <form id="contact" action="studentcode/answerdiscussioncode.jsp" method="post">
                                                    <div class="col-md-12">
                                                        <fieldset>
                                                            <textarea name="answertext" rows="3" class="form-control" id="discussion" placeholder="Answer here !!" required=""></textarea>
                                                        </fieldset>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <fieldset>
                                                                     <%  
                                                                          String qid=request.getParameter("qid");
                                                                    %>

                                                                <input type="hidden" name="qid" value="<%=qid%>"/>
                                                        </fieldset>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <fieldset>
                                                            <button type="submit" id="form-submit" class="btn">Post Answer</button>
                                                        </fieldset>
                                                    </div>
                                                </form>  
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>                  
                        </div>
                    </div>
                </li> 
            </ul> <!-- .cd-hero-slider -->
        </section> <!-- .cd-hero -->




        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

        <!-- End Footer -->

        <div class="footer_bottom">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p class="crp"><b>?? Copyrights to LU-LUCKNOW&trade; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  :: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2022 design & developed by AMAN KUMARI<b></p>
                                    </div>
                                    </div>
                                    </div>
                                    </div>

                                    <a href="#" id="scroll-to-top" class="hvr-radial-out"><i class="fa fa-angle-up"></i></a>

                                    <!-- ALL JS FILES -->
                                    <script src="js/jquery.min.js"></script>
                                    <script src="js/popper.min.js"></script>
                                    <script src="js/bootstrap.min.js"></script>
                                    <!-- ALL PLUGINS -->
                                    <script src="js/jquery.magnific-popup.min.js"></script>
                                    <script src="js/jquery.pogo-slider.min.js"></script>
                                    <script src="js/slider-index.js"></script>
                                    <script src="js/smoothscroll.js"></script>
                                    <script src="js/form-validator.min.js"></script>
                                    <script src="js/contact-form-script.js"></script>
                                    <script src="js/isotope.min.js"></script>
                                    <script src="js/images-loded.min.js"></script>
                                    <script src="js/custom.js"></script>

                                    </body>

                                    </html>


                                    <%
                                        }

                                    %>