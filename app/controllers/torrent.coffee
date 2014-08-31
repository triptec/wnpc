`import Ember from 'ember'`

TorrentController = Ember.Controller.extend(
  torrent: (torrent)->
    torrent.files.forEach (file)->
      file.encoded_path = encodeURIComponent(file.path)
    @set('content.files', torrent.files)
    @socket.get('socket').removeAllListeners(@get('content.id').toLowerCase())
    @set('listening', false)
  actions:
    select: ()->
      return if @get('listening')
      console.log "Listening on #{@get('content.id').toLowerCase()}", "Emitting #{@get('content.torrent_url')}"
      @socket.get('socket').on(@get('content.id').toLowerCase(), @torrent.bind(@))
      @socket.get('socket').emit('torrent_get', @get('content.torrent_url'))
      @set('listening',true)

)

`export default TorrentController`
