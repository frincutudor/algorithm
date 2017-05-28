<html>
<head>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/BoyerMoore/templateBoyerM.css" rel="stylesheet">
    <link href="/resources/css/BoyerMoore/paper.css" rel="stylesheet">
    <link href="/resources/css/BoyerMoore/accordion.css" rel="stylesheet">
    <link href="/resources/css/BoyerMoore/bookmark.css" rel="stylesheet">
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
                    <a href="/home/dtw">DTW</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Pattern match</a>
                <div class="dropdown-content">
                    <a href="/home/kmp">KMP</a>
                    <a href="/home/rabin/karp">Rabin Karp</a>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">MP</a>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </li>
        </ul>


        <div id="centerBM">
            <div id="leftBM">
                <div id="paper">
                    <div id="paper-content">
                        <textarea id="bmArea"></textarea>
                    </div>
                </div>
                <div ng-app="myApp" ng-controller="myCtrl">
                    <button class="button"
                            style="position: absolute; top: 410px; right: 75%" ng-click="click()">Try it
                    </button>
                    <p style="font-family: Neucha; position:absolute; top: 455px; font-size: 22px">
                        <label>Result: </label>
                        {{content}}</p>
                </div>
            </div>
            <div id="rightBM">
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
                        <p>In computer science, the Boyer Moore string search algorithm is an efficient string searching
                            algorithm that is the standard benchmark for practical string search literature. The
                            algorithm preprocesses the string being searched for (the pattern), but not the string being
                            searched in (the text). It is thus well-suited for applications in which the pattern is much
                            shorter than the text or where it persists across multiple searches.<br>
                            <a href="https://en.wikipedia.org/wiki/Boyer%E2%80%93Moore_string_search_algorithm">For more
                                information, please
                                visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                        <br>
                        A N P A N M A N - <br>
                        P A N - - - - - - <br>
                        - P A N - - - - - <br>
                        - - P A N - - - - <br>
                        - - - P A N - - - <br>
                        - - - - P A N - - <br>
                        - - - - - P A N -
                        <br>
                        <p>Alignments of pattern PAN to text ANPANMAN, from k=3 to k=8. A match occurs at k=5.</p>

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
<script src="/resources/angular/bm.js"></script>

</body>

</html>