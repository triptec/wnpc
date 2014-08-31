`import DS from 'ember-data'`

ShowDetailed = DS.Model.extend {
  seasons: DS.hasMany('show-season', {embedded: 'always'})
}

`export default ShowDetailed`
