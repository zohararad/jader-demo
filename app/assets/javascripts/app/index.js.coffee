#= require json2
#= require spine
#= require spine/manager
#= require spine/ajax
#= require spine/route

#= require_tree ./lib
#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views

class App extends Spine.Controller

  @firstLoad: true # we do not render views on first load

  constructor: ->
    super
    App.Post.fetch()
    @posts = new App.PostsController

    Spine.Route.setup(history:true)

window.App = App