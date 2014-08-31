`import DS from 'ember-data'`

ShowEpisodeSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs:
    items:
      embedded: 'always'
)

`export default ShowEpisodeSerializer`
