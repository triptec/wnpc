`import DS from 'ember-data'`
`import Ember from 'ember'`

Show = DS.Model.extend(
  actors: DS.attr("string")
  description: DS.attr("string")
  genres: DS.attr("raw")
  imdb: DS.attr("string")
  posterBig: DS.attr("string")
  posterMed: DS.attr("string")
  rating: DS.attr("number")
  title: DS.attr("string")
  tmdb: DS.attr("string")
  trailer: DS.attr("string")
  writers: DS.attr("string")
  year: DS.attr("number")
  yts: DS.attr("string")
  seasons_arr: null
  seasons: (->
    @getSeasons() unless @get('seasons_arr')
    return @get('seasons_arr')
  ).property('seasons_arr')
  getSeasons: (->
    return unless @get('imdb')
    Ember.$.getJSON("http://api.torrentsapi.com/show?formats=mp4&imdb=#{@get('imdb')}").then((response)=>
      res = Object.keys(response).map (value, index)->
        {
          season_nr: value,
          episodes: response[value]
        }
      @set('seasons', res)
    )
  )
)

`export default Show`
