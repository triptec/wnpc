`import Ember from 'ember'`

WNPSocket = Ember.ObjectController.extend(
  socket: null
  on: ()->
    @get('socket').on.apply(@get('socket'), arguments)
  emit: ()->
    @get('socket').emit.apply(@get('socket'), arguments)

  init:(->
    port = if location.port then ":#{location.port}" else ""
    socket = if io then io.connect("#{location.protocol}//#{location.hostname}#{port}")
    @set('socket', socket)
  )
)

SocketIOInitializer =
  name: 'socket-io'

  # container, app is passed to initialize - add if you need them (you probably do)
  initialize: (container, app) ->
    # app.register 'route', 'foo', 'service:foo'


    app.register('socket:main', WNPSocket, { singleton: true })
    app.inject('controller', 'socket', 'socket:main')
    app.inject('route', 'socket', 'socket:main')
    app.inject('view', 'socket', 'socket:main')

`export default SocketIOInitializer`
