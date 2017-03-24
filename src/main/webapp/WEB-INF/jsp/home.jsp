<%--
  Created by IntelliJ IDEA.
  User: frincutudor
  Date: 3/5/17
  Time: 4:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<html>


<head>
    <title>Home</title>
    <link href="<c:url value="resources/css/main.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/css/background.css"/>" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>

</head>
<body>


    <div id='stars'></div>
    <div id='stars2'></div>
    <div id='stars3'></div>






<ul>
    <li><a class="active" href="#home">Home</a></li>
    <li><a href="#news">News</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#about">About</a></li>
</ul>



    <script src="resources/js/TweenLite.min.js"></script>
    <script src="resources/js/EasePack.min.js"></script>
    <script src="resources/js/rAF.js"></script>
    <script src="resources/js/demo-1.js"></script>

</body>
</html>--%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Animated Background Headers | Demo 1</title>
    <meta name="description" content="Examples for creative website header animations using Canvas and JavaScript" />
    <meta name="keywords" content="header, canvas, animated, creative, inspiration, javascript" />
    <meta name="author" content="Codrops" />
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link href='http://fonts.googleapis.com/css?family=Raleway:200,400,800' rel='stylesheet' type='text/css'>
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <h1 class="main-title">Connect <span class="thin">Three</span></h1>
        </div>
        <div class="codrops-top clearfix">
            <a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Development/OffCanvasMenuEffects/"><span>Previous Demo</span></a>
            <a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=20153"><span>Back to the Codrops Article</span></a>
        </div>
        <div class="codrops-header">
            <h1>Animated Background Headers <span>Examples for creative website header animations using Canvas and JavaScript</span></h1>
            <nav class="codrops-demos">
                <a class="current-demo" href="home.jsp">Demo 1</a>
                <a href="index2.html">Demo 2</a>
                <a href="index3.html">Demo 3</a>
                <a href="index4.html">Demo 4</a>
            </nav>
        </div>
    </div>
    <!-- Related demos -->
    <section class="related">
        <p>If you enjoyed this demo you might also like:</p>
        <a href="http://tympanus.net/Development/HeaderEffects/">
            <img src="http://codropspz.tympanus.netdna-cdn.com/codrops/wp-content/uploads/2013/07/HeaderEffects-300x162.jpg" />
            <h3>On Scroll Header Effects</h3>
        </a>
        <a href="http://tympanus.net/Development/ArticleIntroEffects/">
            <img src="http://codropspz.tympanus.netdna-cdn.com/codrops/wp-content/uploads/2014/05/ArticleIntroEffects-300x162.png" />
            <h3>Inspiration for Article Intro Effects</h3>
        </a>
    </section>
    <p class="ref">Image credits: <a href="http://www.eso.org/public/images/eso1205a/">ESO/VISTA/J. Emerson. Acknowledgment: Cambridge Astronomical Survey Unit</a></p>
</div><!-- /container -->
<script src="js/TweenLite.min.js"></script>
<script src="js/EasePack.min.js"></script>
<script src="js/rAF.js"></script>
<script src="js/demo-1.js"></script>
</body>
</html>