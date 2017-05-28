<html>
<head>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/convexHull/templateConvexHull.css">
    <link href="/resources/css/quickHull/accordion.css" rel="stylesheet">
    <link href="/resources/css/quickHull/bookmark.css" rel="stylesheet">
    <link href="/resources/css/quickHull/paper.css" rel="stylesheet">
    <link href="/resources/css/quickHull/templateQH.css" rel="stylesheet">
    <link href="/resources/css/button.css" rel="stylesheet">


    <link href="/resources/css/rdp.css" rel="stylesheet">
    <meta name="description" content="Examples for creative website header animations using Canvas and JavaScript"/>
    <meta name="keywords" content="header, canvas, animated, creative, inspiration, javascript"/>
    <meta name="author" content="Codrops"/>

    <link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Raleway:200,400,800' rel='stylesheet' type='text/css'>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <script src="/resources/js/canvas/TweenLite.min.js"></script>
    <script src="/resources/js/canvas/EasePack.min.js"></script>
    <script src="/resources/js/canvas/rAF.js"></script>
    <script src="/resources/js/canvas/demo-1.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <link href="https://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script src="https://code.jquery.com/jquery-2.0.3.js"></script>

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
                    <a href="/home/huffman">Huffman</a>
                    <a href="/home/kruskal">Kruskal</a>
                    <a href="/home/dijkstra">Dijkstra</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Divide et impera</a>
                <div class="dropdown-content">
                    <a href="/home/rdp">Ramer Douglas Peucker</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Programare dinamica</a>
                <div class="dropdown-content">
                    <a href="/home/lcs">Longest common subsequence</a>
                    <a href="/home/dtw">DTW</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Pattern match</a>
                <div class="dropdown-content">
                    <a href="/home/boyer/moore">Boyer Moore</a>
                    <a href="/home/kmp">KMP</a>
                    <a href="/home/rabin/karp">Rabin Karp</a>

                </div>
            </li>
        </ul>

        <div id="centerQhull">
            <div id="leftQhull">
                <div ng-app="myApp" ng-controller="myCtrl">
                    <canvas id="myCanvas" width=500 height=300></canvas>
                    <canvas id="canvas" width=500 height=300></canvas>

                    <button class="button" ng-click="click()">Draw Convex Hull</button>
                    <button class="button" id="clear">Clear Canvas</button>
                </div>

                <!--<button id="clear">Clear canvas</button>-->
            </div>
            <div id="rightQhull">
                <div id="bookmark"></div>
                <div id="left2"></div>
                <section class="ac-container">
                    <input id="ac-1" name="accordion-1" type="checkbox"/>
                    <label for="ac-1">Instructions</label>
                    <article class="ac-small">
                        <p>Please draw random points in left upper box and click "Try it!" button.
                        To clear the boxes, click "Clear" button and you can begin from the first step.</p>
                    </article>
                    <input id="ac-2" name="accordion-1" type="checkbox"/>
                    <label for="ac-2">What it is</label>
                    <article class="ac-medium">
                        <p>Quickhull is a method of computing the convex hull of a finite set of points in the plane. It
                            uses a divide and conquer approach similar to that of quicksort, which its name derives
                            from.</p>
                        <p><a href="https://en.wikipedia.org/wiki/Quickhull">For
                            more
                            information, please
                            visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                        <br>
                        <p>This animation depicts the quickhull algorithm.</p>
                        <br>
                        <a title="By Maonus (Own work) [CC BY-SA 4.0 (http://creativecommons.org/licenses/by-sa/4.0)], via Wikimedia Commons"
                           href="https://commons.wikimedia.org/wiki/File%3AAnimation_depicting_the_quickhull_algorithm.gif"><img
                                width="256" alt="Animation depicting the quickhull algorithm"
                                src="https://upload.wikimedia.org/wikipedia/commons/4/42/Animation_depicting_the_quickhull_algorithm.gif"/></a>

                    </article>
                </section>
            </div>
        </div>
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
        </div>
    </div>


</div>
<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script src="/resources/js/canvas/TweenLite.min.js"></script>
<script src="/resources/js/canvas/EasePack.min.js"></script>
<script src="/resources/js/canvas/rAF.js"></script>
<script src="/resources/js/canvas/demo-1.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link href="https://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-1.8.3.js"></script>
<script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script src="https://code.jquery.com/jquery-2.0.3.js"></script>
<script src="/resources/js/qh/points.js"></script>
<script src="/resources/angular/quickhull.js"></script>
<script src="/resources/js/qh/drawHull.js"></script>


</body>

</html>