`import DS from 'ember-data'`

Torrent = DS.Model.extend {
  file: DS.attr("string")
  language: DS.attr("string")
  quality: DS.attr("string")
  size_bytes: DS.attr("number")
  subtitles: DS.attr("string")
  torrent_peers: DS.attr("number")
  torrent_seeds: DS.attr("number")
  torrent_url: DS.attr("string")
  type: DS.attr("string")
}

`export default Torrent`
