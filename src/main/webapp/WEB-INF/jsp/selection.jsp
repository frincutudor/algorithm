<html>
<head>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Neucha');
    </style>
    <link href="/resources/css/selectionSort/templateSelection.css" rel="stylesheet">
    <link href="/resources/css/template.css" rel="stylesheet">

    <link href="/resources/css/insertionSort/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/selectionSort/fontStyle.css" rel="stylesheet">
    <link href="/resources/css/selectionSort/accordion.css" rel="stylesheet">
    <link href="/resources/css/selectionSort/paper.css" rel="stylesheet">
    <link href="/resources/css/selectionSort/bookmark.css" rel="stylesheet">
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
    <script src="/resources/angular/selection.js"></script>


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
                    <a href="/home/bubblesort">Bubble Sort</a>
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
        <div id="centerSelection">

            <div id="row2">

                <div id="paper">
                    <div id="paper-content">
                        <textarea autofocus id="autofocus"></textarea>
                    </div>
                </div>
                <div ng-app="myApp" ng-controller="myCtrl">

                    <button class="button"
                            style="position: absolute; top: 410px; right: 70%" ng-click="click()"
                            style="position: absolute; right: 70%">Try it
                    </button>

                    <%--<button ng-click="click()"></button>--%>
                    <br>
                    <br>
                    <p style="font-family: Neucha; position: absolute; top: 445px; font-size: 22px">
                        <label>Result: </label>
                        {{content.vector}}</p>
                </div>
            </div>
            <div id="rightSelection">
                <div id="bookmark"></div>
                <div id="left2"></div>
                <section class="ac-container">
                    <input id="ac-1" name="accordion-1" type="checkbox"/>
                    <label for="ac-1">Instructions</label>
                    <article class="ac-small">
                        <p>Please insert the numbers in any order in the left box and click "Try it!" button. </p>
                    </article>
                    <input id="ac-2" name="accordion-1" type="checkbox"/>
                    <label for="ac-2">What it is</label>
                    <article class="ac-medium">
                        <p>In computer science, selection sort is a sorting algorithm, specifically an in-place
                            comparison sort. It has O(n2) time complexity, making it inefficient on large lists, and
                            generally performs worse than the similar insertion sort. Selection sort is noted for its
                            simplicity, and it has performance advantages over more complicated algorithms in certain
                            situations, particularly where auxiliary memory is limited.<br>
                            <a href="https://en.wikipedia.org/wiki/Selection_sort">For more information, please
                                visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                        <p>Animation of a selection sort created with Mathematica<br>
                            <a title="By en:Marco Polo at en.wikipedia.org [Public domain], via Wikimedia Commons"
                               href="https://commons.wikimedia.org/wiki/File%3ASelection_sort_animation.gif"><img
                                    width="256" alt="Selection sort animation"
                                    src="https://upload.wikimedia.org/wikipedia/commons/b/b0/Selection_sort_animation.gif"/></a><br>
                            <p>Selection sort animation. Red is current min. Yellow is sorted list. Blue is current item.</p><br>
                            <a title="Joestape89 at the English language Wikipedia [GFDL (http://www.gnu.org/copyleft/fdl.html) or CC-BY-SA-3.0 (http://creativecommons.org/licenses/by-sa/3.0/)], via Wikimedia Commons"
                               href="https://commons.wikimedia.org/wiki/File%3ASelection-Sort-Animation.gif"><img
                                    width="64" alt="Selection-Sort-Animation"
                                    src="https://upload.wikimedia.org/wikipedia/commons/9/94/Selection-Sort-Animation.gif"/></a>
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
<script src="/resources/angular/selection.js"></script>

</body>

</html>