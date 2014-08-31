`import DS from 'ember-data'`

MovieSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs:
    items:
      embedded: 'always'
)

`export default MovieSerializer`
