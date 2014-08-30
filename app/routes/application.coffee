`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend(
  actions:
    select:(torrent)->
      @socket.emit('torrent', torrent)
)

`export default ApplicationRoute`
