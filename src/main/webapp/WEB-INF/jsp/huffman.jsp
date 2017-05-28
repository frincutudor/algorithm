<html>
<head>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/huffman/templateHuffman.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/huffman/huffman.css" rel="stylesheet">
    <link href="/resources/css/huffman/paper.css" rel="stylesheet">
    <link href="/resources/css/huffman/accordion.css" rel="stylesheet">
    <link href="/resources/css/huffman/bookmark.css" rel="stylesheet">
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
    <script src="/resources/angular/test.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <link href="https://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script src="https://code.jquery.com/jquery-2.0.3.js"></script>
    <script src="/resources/js/huffman/huffman.js"></script>

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

            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">MP</a>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </li>
        </ul>



        <div id="centerHuffman">
            <div id="leftHuffman">
                <div id="paper">
                    <div id="paper-content">


                        <textarea autofocus id="autofocus"></textarea>
                    </div>
                </div>
                <div ng-app="myApp" ng-controller="myCtrl">
                    <button class="button"
                            style="position: absolute; top: 220px; right: 70%" ng-click="click()">
                        Try it
                    </button>
                    <canvas id="canvas" width=635 height=550 style="position: absolute; top: 285px"></canvas>
                    <p>{{content.response}}</p>
                </div>
            </div>
            <div id="rightHuffman">
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
                    <article class="ac-small">
                        <p>In computer science and information theory, a Huffman code is a particular type of optimal
                            prefix code that is commonly used for lossless data compression.<br>
                            <a href="https://en.wikipedia.org/wiki/Huffman_coding">For more information, please
                                visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                        <p>Huffman tree generated from the exact frequencies of the text "this is an example of a
                            huffman tree".The output from Huffman's algorithm can be viewed as a variable-length code
                            table for
                            encoding a source symbol (such as a character in a file)<br>
                            <a title="By Meteficha (Own work) [Public domain], via Wikimedia Commons"
                               href="https://commons.wikimedia.org/wiki/File%3AHuffman_tree_2.svg"><img width="300"
                                                                                                        alt="Huffman tree 2"
                                                                                                        src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Huffman_tree_2.svg/512px-Huffman_tree_2.svg.png"/></a><br>
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
<script src="/resources/js/canvas/demo-1.js"></script>
<script src="/resources/angular/huffman.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link href="https://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-1.8.3.js"></script>
<script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script src="https://code.jquery.com/jquery-2.0.3.js"></script>
<script src="/resources/js/huffman/huffman.js"></script>

</body>

</html>