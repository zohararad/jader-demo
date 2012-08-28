class App.Post extends Spine.Model
  @configure 'Post', 'title', 'content', 'comments'

  @extend Spine.Model.Ajax

  @fromJSON: (objects) ->
    return unless objects
    if typeof objects is 'string'
      objects = JSON.parse(objects)

    values = []
    for value in objects
      delete value._id
      delete value.model
      values.push new @(value)
    values