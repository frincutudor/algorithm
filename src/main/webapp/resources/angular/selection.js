/**
 * Created by tufr261616 on 25.05.2017.
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http) {

    $scope.click = function() {


        var x = document.getElementById("autofocus").value;
        var json = "{\"selectionBody\":" + "\"" + x + "\"" + "}";

        $http.post("http://localhost:8080/algorithm/selection", json)
            .then(function (response) {

                $scope.content = response.data;


            });

    };
});

