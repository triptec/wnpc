`import DS from 'ember-data'`

ShowSerializer = DS.RESTSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs:
    items:
      embedded: 'always'

  normalizePayload: (payload)->
    return {shows: payload.MovieList}
)

`export default ShowSerializer`
