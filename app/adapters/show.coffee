`import ApplicationAdapter from './application'`

ShowAdapter = ApplicationAdapter.extend(
  buildURL: (record, suffix)->
    return 'http://api.torrentsapi.com/shows'
)

`export default ShowAdapter`
