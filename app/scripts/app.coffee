'use strict'

@app = angular.module('codingThePrototypeApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])

@app.config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
  ]
