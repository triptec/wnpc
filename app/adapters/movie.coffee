`import ApplicationAdapter from './application'`

MovieAdapter = ApplicationAdapter.extend(
  buildURL: (record, suffix)->
    return 'http://api.torrentsapi.com/list'
)

`export default MovieAdapter`
