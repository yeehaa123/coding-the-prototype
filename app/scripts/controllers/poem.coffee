'use strict'

@app.controller 'PoemCtrl', ['$scope', 'PoemService', ($scope, PoemService) ->
  $scope.poem = PoemService.getPoem(0)

  $scope.substituteVariables = ->
    $scope.substituted = !$scope.substituted
]
