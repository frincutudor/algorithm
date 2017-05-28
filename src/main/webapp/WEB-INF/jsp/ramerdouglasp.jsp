<html>
<head>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/RDP/templateRDP.css" rel="stylesheet">
    <link href="/resources/css/RDP/paper.css" rel="stylesheet">
    <link href="/resources/css/RDP/bookmark.css" rel="stylesheet">
    <link href="/resources/css/rdp.css" rel="stylesheet">
    <link href="/resources/css/RDP/accordion.css" rel="stylesheet">
    <link href="/resources/css/button.css" rel="stylesheet">
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
    <script src="/resources/angular/rdp.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <link href="https://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script src="https://code.jquery.com/jquery-2.0.3.js"></script>
    <script src="/resources/js/rdp/ramerdouglaspack.js"></script>
    <script src="/resources/js/rdp/drawalgorithm.js"></script>
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
                    <a href="/home/kruskal">Kruskal</a>
                    <a href="/home/dijkstra">Dijkstra</a>
                    <a href="/home/huffman">Huffman</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Divide et impera</a>
                <div class="dropdown-content">
                    <a href="/home/hull">Quick Hull</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Programare dinamica</a>
                <div class="dropdown-content">
                    <a href="/home/lcs">Longest common subsequence</a>
                    <a href="/home/dtw">DTW</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Pattern match</a>
                <div class="dropdown-content">
                    <a href="/home/kmp">KMP</a>
                    <a href="/home/rabin/karp">Rabin Karp</a>
                    <a href="/home/boyer/moore">Boyer Moore</a>

            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">MP</a>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </li>
        </ul>
        <div id="centerRDP">
            <div id="leftRDP">
                <canvas id="myCanvas" width=570 height=250 style="position: absolute; top: 10px"></canvas>
                <canvas id="canvas" width=570 height=250 style="position: absolute; top: 280px;"></canvas>
                <label style="position:absolute; top:570px; font-family: Handlee, cursive; font-size: 25px">Set
                    epsilon
                    here: </label>
                <input style="position: absolute; top: 570px; left: 180px" id="input">
                <div ng-app="myApp" ng-controller="myCtrl">
                    <button class="button" id="clear"
                            style="position: absolute; right: 80%; top: 610px">Clear
                    </button>
                    <button class="button"
                            style="position: absolute; top: 610px; right: 92%" ng-click="click()">Try it!!
                    </button>
                    <p>{{content.data}}</p>
                    <br>
                </div>
            </div>
            <div id="rightRDP">
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
                    <article class="ac-medium">
                        <p>The purpose of the algorithm is, given a curve composed of line segments (which is also
                            called a Polyline in some contexts), to find a similar curve with fewer points. The
                            algorithm defines 'dissimilar' based on the maximum distance between the original curve and
                            the simplified curve (i.e., the Hausdorff distance between the curves). The simplified curve
                            consists of a subset of the points that defined the original curve.<br>
                            <a href="https://en.wikipedia.org/wiki/Ramer%E2%80%93Douglas%E2%80%93Peucker_algorithm">For
                                more information, please
                                visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                        <p>Simplifying a piecewise linear curve with the Douglas Peucker algorithm.<br>
                            <a title="By Mysid [CC BY-SA 3.0 (http://creativecommons.org/licenses/by-sa/3.0)], via Wikimedia Commons"
                               href="https://commons.wikimedia.org/wiki/File%3ADouglas-Peucker_animated.gif"><img
                                    width="256" alt="Douglas-Peucker animated"
                                    src="https://upload.wikimedia.org/wikipedia/commons/3/30/Douglas-Peucker_animated.gif"/></a>
                            <br>
                            The effect of varying epsilon in a parametric implementation of RDP.
                            <br>
                            <a title="By Christian.marie (Own work) [CC0], via Wikimedia Commons"
                               href="https://commons.wikimedia.org/wiki/File%3ARDP%2C_varying_epsilon.gif"><img
                                    width="256" alt="RDP, varying epsilon"
                                    src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/RDP%2C_varying_epsilon.gif/512px-RDP%2C_varying_epsilon.gif"/></a>
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
<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script src="/resources/js/canvas/TweenLite.min.js"></script>
<script src="/resources/js/canvas/EasePack.min.js"></script>
<script src="/resources/js/canvas/rAF.js"></script>
<script src="/resources/js/canvas/demo-1.js"></script>
<script src="/resources/angular/rdp.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link href="https://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-1.8.3.js"></script>
<script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script src="https://code.jquery.com/jquery-2.0.3.js"></script>
<script src="/resources/js/rdp/ramerdouglaspack.js"></script>
<script src="/resources/js/rdp/drawalgorithm.js"></script>

</body>

</html>