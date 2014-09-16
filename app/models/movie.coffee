`import DS from 'ember-data'`

Movie = DS.Model.extend(
  actors: DS.attr("string")
  description: DS.attr("string")
  genres: DS.attr("raw")
  imdb: DS.attr("string")
  items: DS.hasMany('torrent')
  posterBig: DS.attr("string")
  posterMed: DS.attr("string")
  rating: DS.attr("number")
  title: DS.attr("string")
  tmdb: DS.attr("string")
  trailer: DS.attr("string")
  writers: DS.attr("string")
  year: DS.attr("number")
  yts: DS.attr("string")
  subtitles: []
)

`export default Movie`
