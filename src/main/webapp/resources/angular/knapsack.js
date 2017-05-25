var app = angular.module('myApp', []);
app.controller('myCtrl', function ($scope, $http) {

    $scope.click = function() {

        var x = document.getElementById("knapsackArea").value;
        var splitedX =x.split(/\n/);
        var json = {
            "kBody":splitedX
        };
        $http.post("http://localhost:8080/algorithm/knapsack", json)
            .then(function (response) {
                $scope.content = response.data;


            });

    };
});