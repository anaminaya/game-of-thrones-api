
(function() {
  'use strict';

  angular.module('app').controller('gamesCtrl', function($scope, $http) {
    function setup() {
      $http.get('/api/v1/games.json').then(function(response) {
        $scope.games = response.data;
      });
    }

    setup();

    $scope.addCharacter = function(character) {
      $http.post('/api/v1/games.json', character).success(function(response) {
        $scope.message = response.message;
        $scope.games.push(character);
        $scope.character = {};
      }).error(function(response){
        $scope.errors = response.errors;
      });
    };

    $scope.deleteCharacter = function(character) {
      var index = $scope.games.indexOf(character);
      $scope.games.splice(index, 1);
    };
    $scope.toggleOrder = function(orderAttribute){
      if (orderAttribute != $scope.orderAttribute){
        $scope.isReverse = false;
      } else {
        $scope.isReverse = !$scope.isReverse;
      }
      $scope.orderAttribute = orderAttribute;
    };

  });
})();
