`import DS from 'ember-data'`

Movie = DS.Model.extend(
  actors: DS.attr("string")
  description: DS.attr("string")
  genres: DS.attr("")
  imdb: DS.attr("string")
  items: DS.attr("")
  posterBig: DS.attr("string")
  posterMed: DS.attr("")
  rating: DS.attr("number")
  title: DS.attr("string")
  tmdb: DS.attr("string")
  trailer: DS.attr("string")
  writers: DS.attr("string")
  year: DS.attr("number")
  yts: DS.attr("string")
)

`export default Movie`
