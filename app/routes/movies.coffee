`import Ember from 'ember'`

MoviesRoute = Ember.Route.extend(
  model: ->
    @store.find('movie')
)

`export default MoviesRoute`
