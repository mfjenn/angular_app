App = angular.module('Angularjs', ['ngRoute'])

App.config(['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode(true)
  $routeProvider.when '/',
    templateUrl: "/assets/main.html"
  $routeProvider.when '/xhr',
    templateUrl: "/assets/xhr.html"
  $routeProvider.when '/preloaded',
    templateUrl: "Template['main']"
  $routeProvider.otherwise
    redirectTo: '/'
])