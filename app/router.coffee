`import Ember from 'ember'`

Router = Ember.Router.extend(
  location: WnpcENV.locationType
)

Router.map ->
  @resource('movies')

`export default Router`
