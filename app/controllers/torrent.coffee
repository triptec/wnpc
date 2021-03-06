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
      @socket.on(@get('content.id').toLowerCase(), @torrent.bind(@))
      console.log @get('content')
      @socket.emit('torrent_get', @get('content'))
      @set('listening',true)

    play:(link)->
      subtitle = null
      subtitles = @get('content.movie.subtitles.english')
      if subtitles
        subtitle = subtitles.sort((a,b)->b.rating-a.rating)[0]
      @socket.emit('player_play', {link:link, subtitle:subtitle})
    pause: ->
      @socket.emit('player_pause', {})
    torrent_pause: ->
      @socket.emit('torrent_pause', @get('content.id').toLowerCase())
    torrent_resume: ->
      @socket.emit('torrent_resume', @get('content.id').toLowerCase())
    torrent_select: (file_index)->
      @socket.emit('torrent_select', @get('content.id').toLowerCase(), file_index)
    torrent_deselect: (file_index)->
      @socket.emit('torrent_deselect', @get('content.id').toLowerCase(), file_index)
    quit: ->
      @socket.emit('player_quit', {})
)

`export default TorrentController`
