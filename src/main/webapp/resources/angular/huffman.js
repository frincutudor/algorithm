/**
 * Created by frincutudor on 4/7/17.
 */

var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http,$window) {

    $scope.click = function() {

        
        var x = document.getElementById("autofocus").value;
        var json = "{\"huffmanBody\":" + "\"" + x + "\"" + "}";

        $http.post("http://localhost:8080/algorithm/huffman", json)
            .then(function (response) {
                $scope.content = response.data;

                $window.canvasDraw(response.data);

            });



    };
});



