/**
 * Created by frincutudor on 4/7/17.
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http) {

    $scope.click = function() {

        var x = document.getElementById("text3").value;
        var json = "{\"insertionBody\":" + "\"" + x + "\"" + "}";

        $http.post("http://localhost:8080/algorithm/insertion", json)
            .then(function (response) {
                $scope.content = response.data;


            });

    };
});

