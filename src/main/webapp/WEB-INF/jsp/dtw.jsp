<html>
<head>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/DTW/templateDTW.css" rel="stylesheet">
    <link href="/resources/css/DTW/paper.css" rel="stylesheet">
    <link href="/resources/css/DTW/bookmark.css" rel="stylesheet">
    <link href="/resources/css/DTW/accordion.css" rel="stylesheet">
    <link href="/resources/css/button.css" rel="stylesheet">
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
    <script src="/resources/angular/dtw.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>


<div class="fullscreen">


    <div class="row">
        <br>


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
                    <a href="/home/huffman">Huffman</a>
                    <a href="/home/kruskal">Kruskal</a>
                    <a href="/home/dijkstra">Dijkstra</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Divide et impera</a>
                <div class="dropdown-content">
                    <a href="/home/rdp">Ramer Douglas Peucker</a>
                    <a href="/home/hull">Quick Hull</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Programare dinamica</a>
                <div class="dropdown-content">
                    <a href="/home/lcs">Longest common subsequence</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Pattern match</a>
                <div class="dropdown-content">
                    <a href="/home/kmp">KMP</a>
                    <a href="/home/rabin/karp">Rabin Karp</a>
                    <a href="/home/boyer/moore">Boyer Moore</a>

                </div>
            </li>
        </ul>


        <div id="centerDTW">
            <div id="leftDTW">
                <div id="paper">
                    <div id="paper-content">
                        <textarea id="dtwArea"></textarea>
                    </div>
                </div>
                <div ng-app="myApp" ng-controller="myCtrl">
                    <button class="button"
                            style="position: absolute; top: 410px; right: 70%" ng-click="click()">Try it
                    </button>
                    <br>
                    <br>
                    <p style="font-family: Neucha; position:absolute; top: 455px; font-size: 22px">
                        <label>Warping Path: </label>
                        {{content.warpingPath}}</p>

                    <p style="font-family: Neucha; position:absolute; top: 485px; font-size: 22px">
                        <label>Warping Distance: </label>
                        {{content.warpingDistance}}</p>
                </div>
            </div>
            <div id="rightDTW">
                <div id="bookmark"></div>
                <div id="left2"></div>
                <section class="ac-container">
                    <input id="ac-1" name="accordion-1" type="checkbox"/>
                    <label for="ac-1">Instructions</label>
                    <article class="ac-small">
                        <p>Please insert two sequences of numbers with Enter between them and click "Try it!" button.
                        <br>
                        Example: <br>
                            1 2 3 4 5<br>
                            5 4 3 2 1</p>
                    </article>
                    <input id="ac-2" name="accordion-1" type="checkbox"/>
                    <label for="ac-2">What it is</label>
                    <article class="ac-medium">
                        <p>In time series analysis, dynamic time warping (DTW) is one of the algorithms for measuring
                            similarity between two temporal sequences which may vary in speed. For instance,
                            similarities in walking could be detected using DTW, even if one person was walking faster
                            than the other, or if there were accelerations and decelerations during the course of an
                            observation. DTW has been applied to temporal sequences of video, audio, and graphics data
                            indeed, any data which can be turned into a linear sequence can be analyzed with DTW. A well
                            known application has been automatic speech recognition, to cope with different speaking
                            speeds. Other applications include speaker recognition and online signature recognition.<br>
                            <a href="https://en.wikipedia.org/wiki/Dynamic_time_warping">For more information, please
                                visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                        <p>DTW Plot</p>
                        <a href="http://mirlab.org/jang/books/dcpr/dpDtw.asp?title=8-4%20Dynamic%20Time%20Warping">Check
                            this link!</a>
                        <img src="http://mirlab.org/jang/books/dcpr/example/output/dtwBridgePlot03.png"
                             style="width: 400px">
                    </article>
                </section>

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
<script src="/resources/angular/dtw.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</body>

</html>