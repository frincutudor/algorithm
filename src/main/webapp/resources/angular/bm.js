/**
 * Created by frincutudor on 5/14/17.
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http) {

    $scope.click = function() {

        var x = document.getElementById("bmArea").value;
        var json = "{\"bmBody\":" + "\"" + x + "\"" + "}";

        $http.post("http://localhost:8080/algorithm/boyer/moore", json)
            .then(function (response) {
                $scope.content = response.data;


            });

    };
});

