/**
 * Created by Joywalker on 5/20/2017.
 */

var app = angular.module('hullModule', []);
app.controller('hullController', function ($scope, $http) {

    $scope.click = function() {


        var x = document.getElementById("quickHullArea").value;
        var splitedX =x.split(/\n/);
        var json = {
            "hullValues":splitedX};
        $http.post("http://localhost:8080/algorithm/hull", json)
            .then(function (response) {
                $scope.content = response.data;
            });
    };
});
