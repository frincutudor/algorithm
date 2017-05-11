/**
 * Created by frincutudor on 5/8/17.
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http,$window) {

    $scope.click = function() {


        var x = document.getElementById("kruskalArea").value;
        var splitedX =x.split(/\n/);
        var json = {
            "kruskalBody":splitedX
        };
        $http.post("http://localhost:8080/algorithm/kruskal", json)
            .then(function (response) {
                $scope.content = response.data;

                $window.canvasDraw(response.data);

            });



    };
});
