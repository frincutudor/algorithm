/**
 * Created by frincutudor on 5/14/17.
 */
var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http,$window) {

    $scope.click = function() {

        var x = document.getElementById("autofocus").value;

        var json={
            "rdpBody": $window.returnCircles().toString(),
            "epsilon":x
        };

        $http.post("http://localhost:8080/algorithm/rdp", json)
            .then(function (response) {
                $scope.content = response.data;

                $window.drawAlgorithm(response.data);

            });



    };
});
