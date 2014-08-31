`import DS from 'ember-data'`

ShowDetailedSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs:
    seasons:
      embedded: 'always'
)

`export default ShowDetailedSerializer`
