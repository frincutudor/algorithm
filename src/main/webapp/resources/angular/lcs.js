/**
 * Created by Joywalker on 5/8/2017.
 */
var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http) {

    $scope.click = function() {

        var x = document.getElementById("lcsArea").value;
        var json = "{\"lcsBody\":" + "\"" + x + "\"" + "}";

        $http.post("http://localhost:8080/algorithm/lcs", json)
            .then(function (response) {
                $scope.content = response.data;


            });

    };
});

