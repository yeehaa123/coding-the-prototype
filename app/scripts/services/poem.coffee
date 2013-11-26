'use strict'

@app.factory 'PoemService', [() ->
  poems = [{
    author: "Langston Hughes"
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
    }
  }]

  alterPoem = (poem)->
    variables = poem.variables
    body =_.map poem.body, (line) ->
      _.each variables, (value, key) ->
        re = new RegExp(key)
        line = line.replace re, value
      line
    body
  
  getPoem = ->
    poem = poems[0]
    poem.body_altered = ->
      alterPoem(@)
    poem

  {
      getPoem: getPoem()
  }
]
