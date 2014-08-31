`import DS from 'ember-data'`

ShowSeasonSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs:
    episodes:
      embedded: 'always'
)

`export default ShowSeasonSerializer`
