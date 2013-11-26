'use strict'

@app.controller 'PoemCtrl', ['$scope', ($scope) ->
  $scope.poem = {
    title: "April Rain Song",
    body: [
      "Let the rain kiss you",
      "Let the rain beat upon your head with silver liquid drops",
      "Let the rain sing you a lullaby",
      "The rain makes still pools on the sidewalk",
      "The rain makes running pools in the gutter",
      "The rain plays a little sleep song on our roof at night",
      "And I love the rain."
    ],
    author: "Langston Hughes"
    variables: {
      "rain": "XXXX", 
      "kiss": "XXXX", 
      "silver liquid drops": "XXXX", 
      "lullaby": "XXXX", 
      "pools": "XXXX",
      "sidewalk": "XXXX", 
      "gutter": "XXXX", 
      "little sleep song": "XXXX", 
      "roof at night": "XXXX"
    },
    body_altered: ->
      variables = @variables
      _.map @body, (line) ->
        _.each variables, (value, key) ->
          re = new RegExp(key)
          line = line.replace re, value
        line
  }
]
