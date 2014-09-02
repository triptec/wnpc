`import Ember from 'ember'`

ApplicationView = Ember.View.extend(
  didInsertElement: ->
    @snapper = new Snap(element: @$().find('#content')[0])

  actions:
    toggleMenu: ->
      if @snapper.state().state == "left"
        @snapper.close()
      else
        @snapper.open "left"

    hideMenu: ->
      @snapper.close()
)

`export default ApplicationView`
