`import Ember from 'ember'`

Router = Ember.Router.extend(
  location: WnpcENV.locationType
)

Router.map ->
  @resource('movies', ->
    @resource('movie', { path: ':movie_id'})
  )
  @resource('shows', ->
    @resource('show', { path: ':show_id'})
  )

`export default Router`
