`import Ember from 'ember'`

ShowsRoute = Ember.Route.extend(
  model: ->
    @store.find('show', {sort: 'seeds', format:'mp4', quality: '720p,1080p'})
)

`export default ShowsRoute`
