'use strict'

@app.directive 'poem', ['PoemService', (PoemService) ->

  controller = ($scope) ->
    $scope.poem = PoemService.getPoem(0)
    
    $scope.substituteVariables = ->
      $scope.substituted = !$scope.substituted

  {
    replace: true
    restrict: 'E'
    templateUrl: './views/poem.html' 
    controller: controller
  }
]
