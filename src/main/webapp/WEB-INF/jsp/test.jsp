<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="/resources/angular/test.js"></script>
<link href="/resources/css/template.css" rel="stylesheet">
<body>
<div id="center">
    <div ng-app="myApp" ng-controller="myCtrl">


<textarea id="insertionArea">
</textarea>


        <button type="button" ng-click="click()">Try it</button>

        <p>{{content}}</p>
    </div>
</div>
</body>

</html>