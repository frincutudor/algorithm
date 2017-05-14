/**
 * Created by frincutudor on 5/14/17.
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http) {

    $scope.click = function() {

        var x = document.getElementById("rkArea").value;
        var json = "{\"rkBody\":" + "\"" + x + "\"" + "}";

        $http.post("http://localhost:8080/algorithm/rabin/karp", json)
            .then(function (response) {
                $scope.content = response.data;


            });

    };
});
