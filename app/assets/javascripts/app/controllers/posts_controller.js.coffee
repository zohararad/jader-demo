Post = App.Post

$ = jQuery.sub()
$.fn.item = ->
  id   = $(@).data('id')
  id or= $(@).parents('[data-id]').data('id')
  id

class Index extends App.ApplicationController

  events:
    'click [data-id]': 'show'

  constructor: ->
    super
    @active ->
      @render() if @canRender

  render: =>
    @posts = Post.all()
    @html @view('posts/index')(@)

  show: (e) ->
    e.preventDefault()
    postId = $(e.target).item()
    @navigate '/posts', postId

class Show extends App.ApplicationController

  constructor: ->
    super
    @active (params) =>
      @render(params.id) if @canRender

  render: (id) =>
    @post = Post.find(id.toString())
    @html @view('posts/show')(@)

class App.PostsController extends Spine.Stack

  el:$('#app-content')

  controllers:
    posts:  Index
    post:   Show

  routes:
    '/':          'posts'
    '/posts':     'posts'
    '/posts/:id': 'post'