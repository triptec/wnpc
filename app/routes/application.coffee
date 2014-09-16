`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend(
  setupController:(controller)->
    console.log "setting up app controller"
    @socket.on("data", (data)=>
      console.log data
      @store.find(data.model, data.id).then((model)->
        model.set(data.attribute, data.data)
      )
    )
)

`export default ApplicationRoute`
