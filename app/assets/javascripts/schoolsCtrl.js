/* global angular */
(function() {
  "use strict";

  angular.module("app").controller("schoolsCtrl", function($scope, $http) {
    
    $scope.setup = function() {
      $http.get("https://data.cityofnewyork.us/resource/4isn-xf7m.json").then(function(response) {
        $scope.schools = response.data;
      });
    };

    $scope.hideInfo = function(school) {
      if (school.infoVisible) { 
        school.infoVisible = false;
      } else {
        school.infoVisible = true;
      }
    };

    $scope.sortBy = function(attribute) {
      if (attribute !== $scope.orderAttribute) {
        $scope.isDescending = false;
      } else {
        $scope.isDescending = !$scope.isDescending;
      }
      $scope.attribute = attribute;
    };



  }); 
}());