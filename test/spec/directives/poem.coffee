'use strict'

describe 'Directive: poem', () ->

  # load the directive's module
  beforeEach module 'codingThePrototypeApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  # it 'should make hidden element visible', inject ($compile) ->
  #   element = angular.element '<poem></poem>'
  #   element = $compile(element) scope
  #   expect(element.text()).toBe 'this is the poem directive'
