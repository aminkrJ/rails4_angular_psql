app = angular.module('dictionary', ['ngRoute', 'templates', 'controllers'])

app.config(['$routeProvider',
  ($routeProvider) -> $routeProvider.when('/', {templateUrl: "index.html", controller: 'PanesController'})
])

panes = [
  {
    id: 1
    name: 'pane 1'
  },
  {
    id: 2
    name: 'pane 2'
  }
]

controllers = angular.module('controllers', [])
controllers.controller("PanesController", ['$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location) ->
    $scope.search = (keywords) ->  $location.path("/").search('keywords', keywords)

    if $routeParams.keywords
      keywords = $routeParams.keywords.toLowerCase()
      $scope.panes = panes.filter (pane)-> pane.name.toLowerCase().indexOf(keywords) != -1
    else
      $scope.panes = []
])
