var app = angular.module('MapaApp', ['ui.bootstrap']);

app.filter('startFrom', function() {
    return function(input, start) {
        if(input) {
            start = +start; //parse to int
            return input.slice(start);
        }
        return [];
    }
});
app.controller('csvdata_controller', function ($scope, $http, $timeout) {
    $http.get('php-mysql/get_csv_data.php').success(function(data){
        $scope.csvdata = data;
        $scope.currentPage = 1; //current page
        $scope.entryLimit = 5; //max no of items to display in a page
        $scope.filteredItems = $scope.csvdata.length; //Initially for no filter  
        $scope.totalItems = $scope.csvdata.length;
    });
    $scope.setPage = function(pageNo) {
        $scope.currentPage = pageNo;
    };
    $scope.filter = function() {
        $timeout(function() { 
            $scope.filteredItems = $scope.filtered.length;
        }, 10);
    };
});
