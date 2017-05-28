<html>
<head>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Neucha');
    </style>
    <link href="/resources/css/template.css" rel="stylesheet">

    <link href="/resources/css/insertionSort/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/fontStyle.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/accordion.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/paper.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/bookmark.css" rel="stylesheet">
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
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <script src="/resources/angular/bubblesort.js"></script>


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
                    <a href="/home/insertion">Insertion Sort</a>
                    <a href="/home/selection">Selection Sort</a>
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
                    <a href="/home/kmp">KMP</a>
                    <a href="/home/rabin/karp">Rabin Karp</a>
                    <a href="/home/boyer/moore">Boyer Moore</a>

                </div>
            </li>
        </ul>
        <div id="center">

            <div id="row2">

                <div id="paper">
                    <div id="paper-content">
                        <textarea autofocus id="autofocus"></textarea>
                    </div>
                </div>
                <div ng-app="myApp" ng-controller="myCtrl">
                    <button class="button"
                            style="position: absolute; top: 410px; right: 70%" ng-click="click()"
                            style="position: absolute; right: 70%">Try
                        it
                    </button>
                    <br>
                    <br>
                    <p style="font-family: Neucha; position: absolute; top: 445px; font-size: 22px">
                        <label>Result: </label>
                        {{content.solution}}</p>
                </div>
            </div>
            <div id="right">
                <div id="bookmark"></div>
                <div id="left2"></div>
                <section class="ac-container">
                    <input id="ac-1" name="accordion-1" type="checkbox"/>
                    <label for="ac-1">Instructions</label>
                    <article class="ac-small">
                        <p>Please insert the numbers in any order in the left box and click "Try it!" button.</p>
                    </article>
                    <input id="ac-2" name="accordion-1" type="checkbox"/>
                    <label for="ac-2">What it is</label>
                    <article class="ac-medium">
                        <p>Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm that
                            repeatedly steps through the list to be sorted, compares each pair of adjacent items and
                            swaps them if they are in the wrong order. Passes through the list are repeated until no
                            swaps are needed, which indicates that the list is sorted.<br>
                            <a href="https://en.wikipedia.org/wiki/Bubble_sort">For more information, please
                                visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                        <p>A graphical example of bubblesort sort<br>
                            <br>
                            <a title="By Swfung8 (Own work) [CC BY-SA 3.0 (http://creativecommons.org/licenses/by-sa/3.0) or GFDL (http://www.gnu.org/copyleft/fdl.html)], via Wikimedia Commons"
                               href="https://commons.wikimedia.org/wiki/File%3ABubble-sort-example-300px.gif"><img
                                    width="256" alt="Bubble-sort-example-300px"
                                    src="https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif"/></a>
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

<script src="/resources/js/canvas/TweenLite.min.js"></script>
<script src="/resources/js/canvas/EasePack.min.js"></script>
<script src="/resources/js/canvas/rAF.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="/resources/angular/bubblesort.js"></script>

</body>

</html>