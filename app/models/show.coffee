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
  show_detailed: DS.belongsTo('show-detailed')
)

`export default Show`
