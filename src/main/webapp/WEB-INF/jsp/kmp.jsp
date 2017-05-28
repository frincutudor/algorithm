<html>
<head>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/KMP/templateKMP.css" rel="stylesheet">
    <link href="/resources/css/KMP/paper.css" rel="stylesheet">
    <link href="/resources/css/KMP/accordion.css" rel="stylesheet">
    <link href="/resources/css/KMP/bookmark.css" rel="stylesheet">
    <link href="/resources/css/button.css" rel="stylesheet">

    <meta name="description" content="Examples for creative website header animations using Canvas and JavaScript"/>
    <meta name="keywords" content="header, canvas, animated, creative, inspiration, javascript"/>
    <meta name="author" content="Codrops"/>

    <link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Raleway:200,400,800' rel='stylesheet' type='text/css'>
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
                    <a href="/home/insertion">Insertion</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Greddy</a>
                <div class="dropdown-content">
                    <a href="/home/kruskal">Kruskal</a>
                    <a href="/home/dijkstra">Dijkstra</a>
                    <a href="/home/huffman">Huffman</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Divide et impera</a>
                <div class="dropdown-content">
                    <a href="/home/rdp">Ramer Douglas Peucker</a>
                    <a href="/home/hull">Quick Hull</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Programare dinamica</a>
                <div class="dropdown-content">
                    <a href="/home/lcs">Longest common subsequence</a>
                    <a href="/home/dtw">DTW</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Pattern match</a>
                <div class="dropdown-content">
                    <a href="/home/rabin/karp">Rabin Karp</a>
                    <a href="/home/boyer/moore">Boyer Moore</a>

                </div>
            </li>
        </ul>


        <div id="centerKMP">
            <div id="leftKMP">
                <div id="paper">
                    <div id="paper-content">
                        <textarea id="kmpArea"></textarea>
                    </div>
                </div>
                <div ng-app="myApp" ng-controller="myCtrl">
                    <button class="button"
                            style="position: absolute; top: 410px; right: 75%" ng-click="click()">Try it
                    </button>
                    <p style="font-family: Neucha; position:absolute; top: 455px; font-size: 22px">
                        <label>Text: </label>
                        {{content.text}}</p>
                    <p style="font-family: Neucha; position:absolute; top: 475px; font-size: 22px">
                        <label>Pattern: </label>
                        {{content.pattern}}</p>
                    <p style="font-family: Neucha; position:absolute; top: 495px; font-size: 22px">
                        <label>Position: </label>
                        {{content.position}}</p>
                </div>
            </div>
            <div id="rightKMP">
                <div id="bookmark"></div>
                <div id="left2"></div>
                <section class="ac-container">
                    <input id="ac-1" name="accordion-1" type="checkbox"/>
                    <label for="ac-1">Instructions</label>
                    <article class="ac-small">
                        <p>Please insert two strings with space between them in left box and click "Try it!" button.<br>
                        Example: ABC ABCDAB</p>
                    </article>
                    <input id="ac-2" name="accordion-1" type="checkbox"/>
                    <label for="ac-2">What it is</label>
                    <article class="ac-medium">
                        <p>In computer science, the Knuth Morris Pratt string searching algorithm (or KMP algorithm)
                            searches for occurrences of a "word" W within a main "text string" S by employing the
                            observation that when a mismatch occurs, the word itself embodies sufficient information to
                            determine where the next match could begin, thus bypassing re-examination of previously
                            matched characters.<br>
                            <a href="https://en.wikipedia.org/wiki/Knuth%E2%80%93Morris%E2%80%93Pratt_algorithm">For more
                                information, please
                                visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                       <img src="/resources/css/images/string-kmp-15-638.jpg" style="width: 400px">

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
<script src="/resources/angular/kmp.js"></script>

</body>

</html>