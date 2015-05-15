
class SelectView extends Backbone.View

	rendered: false 

	render: (sandbox) ->

		if not @rendered
			@$el.html('Welcome to the Select page!');
			@rendered = true




class Select extends Backbone.Model

	id: 'select'

	initialize: ->

		@view = new SelectView()

		@on 'render', @render, @

	render: (sandbox) ->

		@view.setElement sandbox.element
		@view.render(sandbox)

		# console.log sandbox.element, sandbox.global, sandbox.args


module.exports = new Select()



