`import Ember from 'ember'`

ApplicationView = Ember.View.extend(
  didInsertElement: ->
    @snapper = new Snap(element: @$().find('#content')[0])
    console.log @snapper

  actions:
    toggleMenu: ->
      if @snapper.state().state == "left"
        @snapper.close()
      else
        @snapper.open "left"
)

`export default ApplicationView`
