`import Ember from 'ember'`

MovieController = Ember.Controller.extend(
  subtitle: (->
    return unless @get('model.subtitles')
    console.log @get('model.subtitles.english')
    subtitles = @get('model.subtitles.english').sort((a,b)->b.rating-a.rating)
    return subtitles[0].url.split('/').pop()
  ).property('model.subtitles.[]')
)

`export default MovieController`
