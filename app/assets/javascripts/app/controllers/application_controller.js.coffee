class App.ApplicationController extends Spine.Controller

  constructor: ->
    super
    @active (params) ->
      @beforeActive()

  activate: ->
    super
    $('html, body').animate scrollTop:'1px', 'fast'

  deactivate: ->
    super

  canRender: false

  beforeActive: ->
    @canRender = not App.firstLoad
    if App.firstLoad
      App.firstLoad = false
      $('#yield').appendTo(@el).removeClass('active')