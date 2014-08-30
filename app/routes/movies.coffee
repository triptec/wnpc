`import Ember from 'ember'`

MoviesRoute = Ember.Route.extend(
  model: ->
    @store.find('movie', {sort: 'seeds', format:'mp4', quality: '720p,1080p'})
)

`export default MoviesRoute`
