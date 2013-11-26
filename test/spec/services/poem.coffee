'use strict'

describe 'Service: Poem', () ->

  # load the service's module
  beforeEach module 'codingThePrototypeApp'

  # instantiate service
  Poem = {}
  beforeEach inject (_Poem_) ->
    Poem = _Poem_

  it 'should do something', () ->
    expect(!!Poem).toBe true
