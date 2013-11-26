'use strict'

@app.controller 'PoemCtrl', ['$scope', 'PoemService', ($scope, PoemService) ->
  $scope.poem = PoemService.getPoem
]
