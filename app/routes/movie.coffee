`import Ember from 'ember'`

MovieRoute = Ember.Route.extend(
  setupController:(controller,model)->
    console.log "setting up movie controller with", model.serialize({includeId:true})

    @socket.emit('subtitles_get', model.serialize({includeId:true}))
    @_super(controller,model)
)

`export default MovieRoute`
