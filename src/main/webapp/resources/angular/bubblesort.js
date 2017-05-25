/**
 * Created by frincutudor on 4/7/17.
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http) {

    $scope.click = function() {


        var x = document.getElementById("autofocus").value;
        var json = "{\"bsBody\":" + "\"" + x + "\"" + "}";

        $http.post("http://localhost:8080/algorithm/bubblesort", json)
            .then(function (response) {

                $scope.content = response.data;


            });

    };
});

