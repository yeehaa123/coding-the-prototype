'use strict'

@app.directive 'poem', [ ->

  {
    replace: true
    restrict: 'E'
    templateUrl: './views/poem.html' 
    controller: 'PoemCtrl'
    scope: {}
  }
]

