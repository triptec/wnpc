`import Ember from 'ember'`
`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`

Ember.MODEL_FACTORY_INJECTIONS = true

Socket = EmberSockets.extend(
  host: WnpcENV.APP.socketHost
  port: WnpcENV.APP.socketPort
  controllers: []
  autoConnect: true
)

App = Ember.Application.extend(
  modulePrefix: 'wnpc' # TODO: loaded via config
  Resolver: Resolver
  Socket: Socket
)

loadInitializers(App, 'wnpc')

`export default App`
