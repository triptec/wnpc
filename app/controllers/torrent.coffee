`import Ember from 'ember'`

TorrentController = Ember.Controller.extend(
  torrent: (torrent)->
    torrent.files.forEach (file)=>
      file.encoded_path = encodeURIComponent(file.path)
      file.stream_url = "http://localhost:3000/stream/#{@get('content.id').toLowerCase()}/#{file.encoded_path}"
    @set('content.files', torrent.files)
    @set('listening', false)
  actions:
    select: ()->
      return if @get('listening')
      console.log "Listening on #{@get('content.id').toLowerCase()}", "Emitting #{@get('content.torrent_url')}"
      @socket.get('socket').on(@get('content.id').toLowerCase(), @torrent.bind(@))
      @socket.get('socket').emit('torrent_get', @get('content.torrent_url'))
      @set('listening',true)

    play:(link)->
      @socket.get('socket').emit('player_play', link)
    pause: ->
      @socket.get('socket').emit('player_pause', {})
    quit: ->
      @socket.get('socket').emit('player_quit', {})
)

`export default TorrentController`