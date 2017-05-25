<html>
<head>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/lcs/templateLCS.css" rel="stylesheet">
    <link href="/resources/css/lcs/paper.css" rel="stylesheet">
    <link href="/resources/css/lcs/bookmark.css" rel="stylesheet">
    <link href="/resources/css/lcs/accordion.css" rel="stylesheet">
    <link href="/resources/css/images" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="description" content="Examples for creative website header animations using Canvas and JavaScript"/>
    <meta name="keywords" content="header, canvas, animated, creative, inspiration, javascript"/>
    <meta name="author" content="Codrops"/>

    <link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Raleway:200,400,800' rel='stylesheet' type='text/css'>


</head>
<body>


<div class="fullscreen">


    <div class="row">
        <br>


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


        <div id="centerLCS">
            <div id="leftLCS">
                <div id="paper">
                    <div id="paper-content">
                        <textarea id="lcsArea"></textarea>
                    </div>
                </div>
                <div ng-app="myApp" ng-controller="myCtrl">
                    <button type="button" class="btn btn-warning btn-lg"
                            style="position: absolute; top: 410px; right: 75%" ng-click="click()">Try it
                    </button>
                    <p style="position: absolute;top:460px; font-family: Neucha; font-size: 22px">
                        <label>Result: </label>{{content.response}}</p>
                </div>
            </div>
            <div id="rightLCS">
                <div id="bookmark"></div>
                <div id="left2"></div>
                <section class="ac-container">
                    <input id="ac-1" name="accordion-1" type="checkbox"/>
                    <label for="ac-1">Instructions</label>
                    <article class="ac-small">
                        <p>Some content... </p>
                    </article>
                    <input id="ac-2" name="accordion-1" type="checkbox"/>
                    <label for="ac-2">What it is</label>
                    <article class="ac-large">
                        <p>The longest common subsequence (LCS) problem is the problem of finding the longest
                            subsequence common to all sequences in a set of sequences (often just two sequences). It
                            differs from problems of finding common substrings: unlike substrings, subsequences are not
                            required to occupy consecutive positions within the original sequences. The longest common
                            subsequence problem is a classic computer science problem, the basis of data comparison
                            programs such as the diff utility, and has applications in bioinformatics. It is also widely
                            used by revision control systems such as Git for reconciling multiple changes made to a
                            revision-controlled collection of files.<br>
                            <a href="https://en.wikipedia.org/wiki/Longest_common_subsequence_problem">For more
                                information, please
                                visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                        The following example demonstrates a typical result of LCS of strings "prosperity" and
                        "properties":
                        <br>
                        <img src="http://mirlab.org/jang/books/dcpr/example/output/lcs01.png"
                             style="width: 350px; height: 320px">
                        </p>
                    </article>
                </section>

            </div>
        </div>


        <div id="large-header" class="large-header">


            <canvas id="demo-canvas"></canvas>


        </div>
    </div>


</div>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="/resources/js/canvas/TweenLite.min.js"></script>
<script src="/resources/js/canvas/EasePack.min.js"></script>
<script src="/resources/js/canvas/rAF.js"></script>
<script src="/resources/js/canvas/demo-1.js"></script>
<script src="/resources/angular/lcs.js"></script>

</body>

</html>