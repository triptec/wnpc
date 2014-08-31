`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend(
  actions:
    select:(torrent)->
      console.log "Emitting torrent:", torrent
      @socket.emit('torrent', torrent)
)

`export default ApplicationRoute`
