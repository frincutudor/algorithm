/**
 * Created by frincutudor on 5/21/17.
 */
/**
 * Created by frincutudor on 4/7/17.
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http) {

    $scope.click = function() {

        var x = document.getElementById("dtwArea").value;
        var splitedX =x.split(/\n/);
        var json = {
            "dtwBody":splitedX
        };
        $http.post("http://localhost:8080/algorithm/dtw", json)
            .then(function (response) {
                $scope.content = response.data;


            });

    };
});

