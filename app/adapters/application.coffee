`import DS from 'ember-data'`

ApplicationAdapter = DS.ActiveModelAdapter.extend(
  host: WnpcENV.APP.apiHost
  namespace: 'api/v1'
)

`export default ApplicationAdapter`
