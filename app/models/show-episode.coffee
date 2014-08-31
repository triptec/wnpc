`import DS from 'ember-data'`

ShowEpisode = DS.Model.extend {
  imdb: DS.attr('string')
  title: DS.attr('string')
  air_time: DS.attr('string')
  run_time: DS.attr('string')
  synopsis: DS.attr('string')
  season: DS.attr('number')
  episode: DS.attr('number')
  items: DS.hasMany('torrent')
}

`export default ShowEpisode`
