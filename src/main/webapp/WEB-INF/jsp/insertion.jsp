<html>
<head>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/textstyle.css" rel="stylesheet">
    <meta name="description" content="Examples for creative website header animations using Canvas and JavaScript"/>
    <meta name="keywords" content="header, canvas, animated, creative, inspiration, javascript"/>
    <meta name="author" content="Codrops"/>

    <link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Raleway:200,400,800' rel='stylesheet' type='text/css'>

    <script src="/resources/js/canvas/TweenLite.min.js"></script>
    <script src="/resources/js/canvas/EasePack.min.js"></script>
    <script src="/resources/js/canvas/rAF.js"></script>
    <script src="/resources/js/canvas/demo-1.js"></script>
    <script src="/resources/angular/test.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>


<div class="fullscreen">


    <div class="row">
        <br>

        <!-- TODO Fix dropwdown menu-->
        <ul>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Diverse</a>
                <div class="dropdown-content">
                    <a href="index.html">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Greddy</a>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Divide et impera</a>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Programare dinamica</a>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Pattern match</a>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">MP</a>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </li>
        </ul>

        <!--TODO Arrange button , make this div look nice -->
        <div id="center">
            <div id="row">
                <div id="left">
                    <div id="menu">
                        <div ng-app="myApp" ng-controller="myCtrl">

                            <!--TODO Upgrade textarea interface ( or find better solutions for data input on user side ) -->
                            <textarea id="text3"></textarea>

                            <button class="buttonStyle" ng-click="click()">Try it</button>

                            <!--TODO Convert JSON response to look nice -->
                            <p>{{content}}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="right">
                <h1 align="center"> Instructions </h1>
                <h2 align="center"> Write your instructions here!!</h2>
            </div>
        </div>


        <div id="large-header" class="large-header">


            <canvas id="demo-canvas"></canvas>


        </div>
    </div>


</div>

<script src="/resources/js/canvas/TweenLite.min.js"></script>
<script src="/resources/js/canvas/EasePack.min.js"></script>
<script src="/resources/js/canvas/rAF.js"></script>
<script src="/resources/js/canvas/demo-1.js"></script>
<script src="/resources/angular/insertion.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

</body>

</html>