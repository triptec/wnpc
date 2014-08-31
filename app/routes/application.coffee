`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend(
  actions:
    select:(torrent)->
      console.log "Emitting torrent:", torrent
      @socket.emit('torrent_get', torrent)
)

`export default ApplicationRoute`
