<%--
  Created by IntelliJ IDEA.
  User: frincutudor
  Date: 3/14/17
  Time: 8:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<meta name="description" content="Examples for creative website header animations using Canvas and JavaScript" />
<meta name="keywords" content="header, canvas, animated, creative, inspiration, javascript" />
<meta name="author" content="Codrops" />

<link rel="stylesheet" type="text/css" href="/resources/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/demo.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/component.css" />
<link href='http://fonts.googleapis.com/css?family=Raleway:200,400,800' rel='stylesheet' type='text/css'>
   <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/test.css" rel="stylesheet">
<%--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]--%>
</head>

<body>


<div class="container demo-1">

    <div class="content">

        <div id="large-header" class="large-header">
           <br>
            <ul>
                <li><a href="#home">Diverse</a></li>
                <li><div class="dropdown">
                    <button class="dropbtn">Dropdown</button>
                    <div class="dropdown-content">
                        <a href="#">Link 1</a>
                        <a href="#">Link 2</a>
                        <a href="#">Link 3</a>
                    </div>
                </div></li>

                <li><a href="#contact">Divide et imp</a></li>
                <li><a href="#about">Programare dinamica</a></li>
                <li><a href="#about">Pattern match</a></li>
                <li><a href="#about">MP</a></li>

            </ul>




            <canvas id="demo-canvas"></canvas>

            <div id="mydiv"><h1 class="main-title">WELCOME TO <span class="thin">ALGORITHM SOLVER</span></h1></div>

        </div>
    </div>

</div><!-- /container -->
<script src="/resources/js/TweenLite.min.js"></script>
<script src="/resources/js/EasePack.min.js"></script>
<script src="/resources/js/rAF.js"></script>
<script src="/resources/js/demo-1.js"></script>
</body>
</html>













<%--<body>
<form:form method="post" action="answer" commandName="datainsertion">
    <form:textarea path="algorithmValues" row="5" col="40"></form:textarea>
    <br>
    <input type="submit">

</form:form>--%>