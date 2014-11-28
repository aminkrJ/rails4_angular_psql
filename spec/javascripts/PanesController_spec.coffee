describe 'PanesController', ->
  scope        = null
  ctrl         = null
  location     = null
  routeParams  = null
  resource     = null

  setupController = (keywords) ->
    inject(($location, $routeParams, $rootScope, $resource, $controller) ->
      scope       = $rootScope.$new()
      location    = $location
      resource    = $resource
      routeParams = $routeParams
      routeParams.keywords = keywords

      ctrl        = $controller('PanesController',
                                $scope: scope
                                $location: location)
    )

  beforeEach(module("dictionary"))
  beforeEach(setupController())

  it 'defaults to no panes', ->
    expect(scope.panes).toEqualData([])
