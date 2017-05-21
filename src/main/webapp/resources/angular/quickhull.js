/**
 * Created by Joywalker on 5/20/2017.
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http,$window) {

    $scope.click = function() {
        var json =
            {
             "hullValues":$window.returnCircles().toString()
            };

        $http.post("http://localhost:8080/algorithm/hull", json)
            .then(function (response) {
                $scope.content = response.data;
                $window.drawHull(response.data);
            });
    };
});
