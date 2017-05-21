<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expanding Overlay Effect</title>
    <meta name="description" content="Expanding Overlay Effect: Revealing content using CSS clip"/>
    <meta name="keywords" content="css, css3, clip, rect(), overlay, expand, fixed, effect, responsive"/>
    <meta name="author" content="Codrops"/>
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="/resources/css/ui/default.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/ui/climacons.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/ui/component.css"/>
    <script src="/resources/js/ui/modernizr.custom.js"></script>
    <script src="/resources/js/jquery/jquery-3.2.1.min.js"></script>
    <script src="/resources/js/jquery/jquery-3.2.1.js"></script>

    <link href='http://fonts.googleapis.com/css?family=Raleway:200,400,800' rel='stylesheet' type='text/css'>
    <link href="/resources/css/template.css" rel="stylesheet">
    <link href="/resources/css/insertion-template.css" rel="stylesheet">
    <link href="/resources/css/huffman.css" rel="stylesheet">
    <script src="/resources/js/canvas/TweenLite.min.js"></script>
    <script src="/resources/js/canvas/EasePack.min.js"></script>
    <script src="/resources/js/canvas/rAF.js"></script>
    <script src="/resources/js/canvas/demo-1.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <script src="/resources/js/huffman/huffman.js"></script>
    <script src="/resources/angular/huffman.js"></script>


</head>
<body>
<div class="container">
    <!-- Codrops top bar -->
    <div class="codrops-top clearfix">
    </div><!--/ Codrops top bar -->
    <header class="clearfix">
        <h1>Welcome to ALGORITHM SOLVER<span>Project made by : Frincu Tudor , Candea Ionut , Razvant Alexandru</span></h1>

    </header>
    <div class="main">

        <ul id="rb-grid" class="rb-grid clearfix">
            <li class="rb-span-2">
                <h3>Ramer Douglas Peuker</h3><span class="rb-temp"> Divide et impera</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>

                </div>
            </li>
            <li >
                <h3>Huffman</h3><span class="rb-temp"> Greedy</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>
                    <div class="rb-week">

                        <div id="large-header" class="large-header">
                            <canvas id="demo-canvas"></canvas>

                        </div>
                        <div id="header">

                            </div>
                            <div id="first">
                                <div ng-app="myApp" ng-controller="myCtrl">

                                    <!--TODO Upgrade textarea interface ( or find better solutions for data input on user side ) -->
                                    <textarea id="huffmanArea"></textarea>
                                    <button id="button" type="button" ng-click="click()">Try it</button>
                                    <!--TODO Convert JSON response to look nice -->
                                    <p>{{content}}</p>
                                </div>
                            </div>
                            <div id="second">
                                <canvas id="canvas" width=500 height=600></canvas>

                                </div>
                            </div>

                </div>
            </li>
            <li>
                <h3>Backpack problem</h3><span class="rb-temp">NP-completitudine</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>
                    <div class="rb-week">


                    </div>
                </div>
            </li>
            <li>
                <h3>Kruskal</h3><span class="rb-temp">Greedy</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>
                    <div class="rb-week">
                        <div><span class="rb-city">Moscow</span><span class="icon-clima-4"></span><span>1°C</span></div>
                        <div><span>Mon</span><span class="icon-clima-4"></span><span>-1°C</span></div>
                        <div><span>Tue</span><span class="icon-clima-6"></span><span>-2°C</span></div>
                        <div><span>Wed</span><span class="icon-clima-6"></span><span>-6°C</span></div>
                        <div><span>Thu</span><span class="icon-clima-6"></span><span>-4°C</span></div>
                        <div><span>Fri</span><span class="icon-clima-5"></span><span>-5°C</span></div>
                        <div><span>Sat</span><span class="icon-clima-6"></span><span>-6°C</span></div>
                        <div><span>Sun</span><span class="icon-clima-6"></span><span>-8°C</span></div>
                    </div>
                </div>
            </li>
            <li >
                <h3>Dijsktra</h3><span class="rb-temp">Greedy</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>
                    <div class="rb-week">
                        <div><span class="rb-city">New Delhi</span><span class="icon-clima-1"></span><span>17°C</span>
                        </div>
                        <div><span>Mon</span><span class="icon-clima-1"></span><span>18°C</span></div>
                        <div><span>Tue</span><span class="icon-clima-8"></span><span>19°C</span></div>
                        <div><span>Wed</span><span class="icon-clima-8"></span><span>16°C</span></div>
                        <div><span>Thu</span><span class="icon-clima-10"></span><span>17°C</span></div>
                        <div><span>Fri</span><span class="icon-clima-10"></span><span>18°C</span></div>
                        <div><span>Sat</span><span class="icon-clima-2"></span><span>17°C</span></div>
                        <div><span>Sun</span><span class="icon-clima-1"></span><span>17°C</span></div>
                    </div>
                </div>
            </li>
            <li >
                <h3>Boyer Moore</h3><span class="rb-temp">Patter match</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>
                    <div class="rb-week">
                        <div><span class="rb-city">Tel Aviv</span><span class="icon-clima-1"></span><span>22°C</span>
                        </div>
                        <div><span>Mon</span><span class="icon-clima-1"></span><span>23°C</span></div>
                        <div><span>Tue</span><span class="icon-clima-2"></span><span>22°C</span></div>
                        <div><span>Wed</span><span class="icon-clima-2"></span><span>22°C</span></div>
                        <div><span>Thu</span><span class="icon-clima-2"></span><span>21°C</span></div>
                        <div><span>Fri</span><span class="icon-clima-1"></span><span>21°C</span></div>
                        <div><span>Sat</span><span class="icon-clima-2"></span><span>21°C</span></div>
                        <div><span>Sun</span><span class="icon-clima-2"></span><span>24°C</span></div>
                    </div>
                </div>
            </li>
            <li>
                <h3>Rabin Karp</h3><span class="rb-temp">Patter match</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>
                    <div class="rb-week">
                        <div><span class="rb-city">Cairo</span><span class="icon-clima-2"></span><span>21°C</span></div>
                        <div><span>Mon</span><span class="icon-clima-1"></span><span>22°C</span></div>
                        <div><span>Tue</span><span class="icon-clima-1"></span><span>20°C</span></div>
                        <div><span>Wed</span><span class="icon-clima-1"></span><span>21°C</span></div>
                        <div><span>Thu</span><span class="icon-clima-1"></span><span>21°C</span></div>
                        <div><span>Fri</span><span class="icon-clima-2"></span><span>21°C</span></div>
                        <div><span>Sat</span><span class="icon-clima-2"></span><span>22°C</span></div>
                        <div><span>Sun</span><span class="icon-clima-2"></span><span>23°C</span></div>
                    </div>
                </div>
            </li>
            <li>
                <h3>KMP</h3><span class="rb-temp">Pattern match</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>
                    <div class="rb-week">
                        <div><span class="rb-city">New York</span><span class="icon-clima-11"></span><span>3°C</span>
                        </div>
                        <div><span>Mon</span><span class="icon-clima-11"></span><span>3°C</span></div>
                        <div><span>Tue</span><span class="icon-clima-11"></span><span>-1°C</span></div>
                        <div><span>Wed</span><span class="icon-clima-11"></span><span>-2°C</span></div>
                        <div><span>Thu</span><span class="icon-clima-7"></span><span>1°C</span></div>
                        <div><span>Fri</span><span class="icon-clima-7"></span><span>0°C</span></div>
                        <div><span>Sat</span><span class="icon-clima-11"></span><span>2°C</span></div>
                        <div><span>Sun</span><span class="icon-clima-11"></span><span>3°C</span></div>
                    </div>
                </div>
            </li>
            <li class="rb-span-2">
                <h3>Longest common Sequence</h3><span class="rb-temp">Programare dinamica</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>
                    <div class="rb-week">
                        <div><span class="rb-city">San Francisco</span><span
                                class="icon-clima-2"></span><span>15°C</span></div>
                        <div><span>Mon</span><span class="icon-clima-2"></span><span>16°C</span></div>
                        <div><span>Tue</span><span class="icon-clima-2"></span><span>14°C</span></div>
                        <div><span>Wed</span><span class="icon-clima-2"></span><span>13°C</span></div>
                        <div><span>Thu</span><span class="icon-clima-2"></span><span>15°C</span></div>
                        <div><span>Fri</span><span class="icon-clima-2"></span><span>15°C</span></div>
                        <div><span>Sat</span><span class="icon-clima-1"></span><span>16°C</span></div>
                        <div><span>Sun</span><span class="icon-clima-1"></span><span>15°C</span></div>
                    </div>
                </div>
            </li>
            <li>
                <h3>Quick Hull</h3><span class="rb-temp">Divide et impera</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>
                    <div class="rb-week">
                        <div><span class="rb-city">Tokyo</span><span class="icon-clima-2"></span><span>8°C</span></div>
                        <div><span>Mon</span><span class="icon-clima-1"></span><span>7°C</span></div>
                        <div><span>Tue</span><span class="icon-clima-2"></span><span>6°C</span></div>
                        <div><span>Wed</span><span class="icon-clima-1"></span><span>8°C</span></div>
                        <div><span>Thu</span><span class="icon-clima-1"></span><span>8°C</span></div>
                        <div><span>Fri</span><span class="icon-clima-2"></span><span>6°C</span></div>
                        <div><span>Sat</span><span class="icon-clima-2"></span><span>5°C</span></div>
                        <div><span>Sun</span><span class="icon-clima-2"></span><span>5°C</span></div>
                    </div>
                </div>
            </li>
            <li class="rb-span-4">
                <h3>Dynamic time warping</h3><span class="rb-temp">Programare dinamica</span>
                <div class="rb-overlay">
                    <span class="rb-close">close</span>
                    <div class="rb-week">
                        <div><span class="rb-city">Sydney</span><span class="icon-clima-4"></span><span>28°C</span>
                        </div>
                        <div><span></span><span class="icon-clima-4"></span><span></span></div>
                        <div><span>Tue</span><span class="icon-clima-4"></span><span>26°C</span></div>
                        <div><span>Wed</span><span class="icon-clima-2"></span><span>27°C</span></div>
                        <div><span>Thu</span><span class="icon-clima-2"></span><span>30°C</span></div>
                        <div><span>Fri</span><span class="icon-clima-8"></span><span>31°C</span></div>
                        <div><span>Sat</span><span class="icon-clima-8"></span><span>29°C</span></div>
                        <div><span>Sun</span><span class="icon-clima-8"></span><span>29°C</span></div>
                    </div>
                </div>
            </li>

        </ul>

    </div>
</div><!-- /container -->
<script src="/resources/js/jquery/jquery-3.2.1.min.js"></script>
<script src="/resources/js/jquery/jquery-3.2.1.js"></script>
<script src="/resources/js/ui/jquery.fittext.js"></script>
<script src="/resources/js/ui/boxgrid.js"></script>
<script>
    $(function () {

        Boxgrid.init();


    });
</script>
<script>
    $(document).ready(function () {
        $(".rb-week").on("click", function () {
            $(this).load("huffman.jsp");
        });
    });
</script>
<script src="/resources/js/canvas/TweenLite.min.js"></script>
<script src="/resources/js/canvas/EasePack.min.js"></script>
<script src="/resources/js/canvas/rAF.js"></script>
<script src="/resources/js/canvas/demo-1.js"></script>
<script src="/resources/angular/huffman.js"></script>
<script src="/resources/js/jqueryscripts.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="/resources/js/huffman/huffman.js"></script>

</body>
</html>