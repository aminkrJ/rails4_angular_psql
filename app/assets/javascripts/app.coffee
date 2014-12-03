app = angular.module('dictionary', [
  'ngRoute'
  'templates'
  'ngResource'
  'controllers'
])

app.config(['$routeProvider',
  ($routeProvider) ->
    $routeProvider.when('/',
      templateUrl: "index.html"
      controller: 'PanesController'
    )
])

panes = [
  {
    id: 1
    name: 'pane1'
  },
  {
    id: 4
    name: 'pane2'
  }
]

controllers = angular.module('controllers', [])
controllers.controller("PanesController", ['$scope', '$routeParams', '$location', '$resource'
  ($scope,$routeParams,$location,$resource) ->
    debugger
    $scope.search = (keywords) ->  $location.path("/").search('keywords', keywords)
    Pane = $resource('/panes/:paneId', { paneId: "@id", format: 'json' })

    if $routeParams.keywords
      Pane.query(keywords: $routeParams.keywords, (results)-> $scope.panes = results)
    else
      $scope.panes = []
])
