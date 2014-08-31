`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend(
  actions:
    select:(torrent)->
      console.log @socket.emit('torrent', torrent)
)

`export default ApplicationRoute`
