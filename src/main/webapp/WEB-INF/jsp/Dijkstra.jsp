<html>
<head>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/insertionSort/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/huffman/huffman.css" rel="stylesheet">
    <link href="/resources/css/dijkstra/accordion.css" rel="stylesheet">
    <link href="/resources/css/dijkstra/bookmark.css" rel="stylesheet">
    <link href="/resources/css/dijkstra/paper.css" rel="stylesheet">
    <link href="/resources/css/dijkstra/templateDijkstra.css" rel="stylesheet">
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
    <script src="/resources/angular/dijkstra.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <link href="https://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <script src="https://code.jquery.com/jquery-2.0.3.js"></script>
    <script src="/resources/js/dijkstra/pathdraw.js"></script>

</head>
<body>


<div class="fullscreen">


    <div class="row">
        <br>
        <ul>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Diverse</a>
                <div class="dropdown-content">
                    <a href="/home/">home</a>
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


        <div id="centerDijkstra">
            <div id="leftDijkstra">
                <div id="paper">
                    <div id="paper-content">


                        <textarea autofocus id="autofocus"></textarea>
                    </div>
                </div>

                <div ng-app="myApp" ng-controller="myCtrl">
                    <button type="button" class="btn btn-warning btn-lg" style="position: absolute; top: 220px; right: 70%"
                            ng-click="click()">
                        Try it
                    </button>
                    <canvas id="canvas2" width=635 height=300 style="position: absolute; top: 270px"></canvas>
                    <br>
                    <br>
                    <canvas id="canvas" width=635 height=410 style="position: absolute; top: 590px"></canvas>
                    <p>{{content.data}}</p>
                </div>
            </div>

            <div id="rightDijkstra">
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
                        <p>Dijkstra's algorithm is an algorithm for finding the shortest paths between nodes in a graph,
                            which may represent, for example, road networks. It was conceived by computer scientist
                            Edsger W.<br>
                            <a href="https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm">For more information, please
                                visit the following link</a></p>
                    </article>
                    <input id="ac-3" name="accordion-1" type="checkbox"/>
                    <label for="ac-3">How it works</label>
                    <article class="ac-large">
                        <p>Dijkstra's algorithm runtime<br>
                            <a title="By Ibmua (Work by uploader.) [Public domain], via Wikimedia Commons"
                               href="https://commons.wikimedia.org/wiki/File%3ADijkstra_Animation.gif"><img width="256"
                                                                                                            alt="Dijkstra Animation"
                                                                                                            src="https://upload.wikimedia.org/wikipedia/commons/5/57/Dijkstra_Animation.gif"/></a>
                            <br>
                            Illustration of Dijkstra's algorithm search for finding path from a start node (lower left,
                            red) to a goal node (upper right, green) in a robot motion planning problem.
                            <br>
                            <a title="By Subh83 (Own work) [CC BY 3.0 (http://creativecommons.org/licenses/by/3.0)], via Wikimedia Commons"
                               href="https://commons.wikimedia.org/wiki/File%3ADijkstras_progress_animation.gif"><img
                                    width="128" alt="Dijkstras progress animation"
                                    src="https://upload.wikimedia.org/wikipedia/commons/2/23/Dijkstras_progress_animation.gif"/></a>
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
<script src="/resources/angular/dijkstra.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link href="https://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-1.8.3.js"></script>
<script src="https://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script src="https://code.jquery.com/jquery-2.0.3.js"></script>
<script src="/resources/js/dijkstra/pathdraw.js"></script>

</body>

</html>