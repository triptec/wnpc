`import DS from 'ember-data'`

ApplicationAdapter = DS.RESTAdapter.extend(
  host: 'http://api.torrentsapi.com'
)

`export default ApplicationAdapter`
