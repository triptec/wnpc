`import DS from 'ember-data'`

ShowSeason = DS.Model.extend {
  season_nr: DS.attr('number')
  episodes: DS.hasMany('show-episode')
}

`export default ShowSeason`
