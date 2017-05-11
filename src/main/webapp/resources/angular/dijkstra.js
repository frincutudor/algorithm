/**
 * Created by Joywalker on 5/11/2017.
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http,$window) {

    $scope.click = function() {


        var x = document.getElementById("dijkstraArea").value;
        var splitedX =x.split(/\n/);
        var json = {
            "dijkstraBody":splitedX
        };
        $http.post("http://localhost:8080/algorithm/dijkstra", json)
            .then(function (response) {
                $scope.content = response.data;

                $window.canvasDraw(response.data);

            });
    };
});
