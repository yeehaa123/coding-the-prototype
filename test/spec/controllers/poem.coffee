'use strict'

describe 'Controller: PoemCtrl', () ->

  # load the controller's module
  beforeEach module 'codingThePrototypeApp'

  PoemCtrl = {}
  scope = {}
  mockPoemService = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    mockPoemService = {
      getPoem: ->
        { poem: "Bla" } 
    }
    PoemCtrl = $controller 'PoemCtrl', {
      $scope: scope, PoemService: mockPoemService
    }

  it 'attaches a poem to the scope', () ->
    expect(scope.poem).toBeDefined()

  it 'substitutes variables', () ->
    scope.substituteVariables()
    expect(scope.substituted).toBe true
    scope.substituteVariables()
    expect(scope.substituted).toBe false

