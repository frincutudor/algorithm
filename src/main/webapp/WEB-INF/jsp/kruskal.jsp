<html>
<head>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/huffman/huffman.css" rel="stylesheet">
    <link href="/resources/css/kruskal/templateKruskal.css" rel="stylesheet">
    <link href="/resources/css/kruskal/bookmark.css" rel="stylesheet">
    <link href="/resources/css/kruskal/accordion.css" rel="stylesheet">
    <link href="/resources/css/kruskal/paper.css" rel="stylesheet">
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


        <div id="centerKruskal">
            <div id="leftKruskal">
                <div id="paper">
                    <div id="paper-content">


                        <textarea autofocus id="autofocus"></textarea>
                    </div>
                </div>

                <div ng-app="myApp" ng-controller="myCtrl">
                    <button type="button" class="btn btn-warning btn-lg"
                            style="position: absolute; top: 220px; right: 70%"
                            ng-click="click()">
                        Try it
                    </button>
                    <canvas id="canvas2" width=635 height=300 style="position: absolute; top: 280px"></canvas>
                    <br>
                    <br>
                    <canvas id="canvas" width=635 height=430 style="position: absolute; top: 600px"></canvas>
                    <p>{{content.data}}</p>
                </div>
            </div>

            <div id="rightKruskal">
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
                        <p>Kruskal's algorithm is a minimum-spanning-tree algorithm which finds an edge of the least
                            possible weight that connects any two trees in the forest. It is a greedy algorithm in
                            graph theory as it finds a minimum spanning tree for a connected weighted graph adding
                            increasing cost arcs at each step. This means it finds a subset of the edges that forms a
                            tree that includes every vertex, where the total weight of all the edges in the tree is
                            minimized. If the graph is not connected, then it finds a minimum spanning forest (a minimum
                            spanning tree for each connected component).<br>
                            <a href="https://en.wikipedia.org/wiki/Kruskal%27s_algorithm">For more information, please
                                visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                        <p>A demo for Kruskal's algorithm based on Euclidean distance.<br>
                            <a title="By Shiyu Ji (Own work) [CC BY-SA 4.0 (http://creativecommons.org/licenses/by-sa/4.0)], via Wikimedia Commons"
                               href="https://commons.wikimedia.org/wiki/File%3AKruskalDemo.gif"><img width="256"
                                                                                                     alt="KruskalDemo"
                                                                                                     src="https://upload.wikimedia.org/wikipedia/commons/b/bb/KruskalDemo.gif"/></a><br>
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
<script src="/resources/angular/kruskal.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link href="https://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-1.8.3.js"></script>
<script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script src="https://code.jquery.com/jquery-2.0.3.js"></script>
<script src="/resources/js/kruskal/kruskal.js"></script>

</body>

</html>