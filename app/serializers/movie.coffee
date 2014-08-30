`import DS from 'ember-data'`

MovieSerializer = DS.RESTSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs:
    items:
      embedded: 'always'

  normalizePayload: (payload)->
    return {movies: payload.MovieList}
)

`export default MovieSerializer`
