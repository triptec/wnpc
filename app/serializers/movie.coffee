`import DS from 'ember-data'`

MovieSerializer = DS.RESTSerializer.extend(
  normalizePayload: (payload)->
    return {movies: payload.MovieList}
)

`export default MovieSerializer`
