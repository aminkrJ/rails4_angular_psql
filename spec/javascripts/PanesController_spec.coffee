describe 'PanesController', ->
  scope        = null
  ctrl         = null
  location     = null
  routeParams  = null
  resource     = null

  httpBackend  = null

  setupController = (keywords, results) ->
    inject(($location, $routeParams, $rootScope, $resource, $httpBackend, $controller) ->
      scope       = $rootScope.$new()
      location    = $location
      resource    = $resource
      routeParams = $routeParams
      routeParams.keywords = keywords

      httpBackend = $httpBackend

      if results
        request = new RegExp("\/panes.*keywords=#{keywords}")
        httpBackend.expectGET(request).respond(results)

      ctrl        = $controller('PanesController',
                                $scope: scope
                                $location: location)
    )

  beforeEach(module("dictionary"))

  afterEach ->
    httpBackend.verifyNoOutstandingExpectation()
    httpBackend.verifyNoOutstandingRequest()

  describe 'controller init', ->
    describe 'when no keyword present', ->
      beforeEach(setupController())

      it 'defaults to no panes', ->
        expect(scope.panes).toEqualData([])

  describe 'with keywords', ->
    keywords = 'foo'
    panes = [
      {
        id: 2
        name: 'pane1'
      },
      {
        id: 4
        name: 'pane2'
      }
    ]
    beforeEach ->
      setupController(keywords, panes)
      httpBackend.flush()

    it 'calls the back-end', ->
      expect(scope.panes).toEqualData(panes)

  describe 'search()', ->
    beforeEach ->
      setupController()

    it 'redirects to itself with a keyword param', ->
      keywords = 'foo'
      scope.search(keywords)
      expect(location.path()).toBe('/')
      expect(location.search()).toEqualData({keywords: keywords})
