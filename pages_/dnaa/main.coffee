
class DnaAView extends Backbone.View

	rendered: false 

	render: (sandbox) ->

		if not @rendered
			@$el.html('Welcome to the DnaA page!');
			@rendered = true




class DnaA extends Backbone.Model

	id: 'dnaa'

	initialize: ->

		@view = new DnaAView()

		@on 'render', @render, @

	render: (sandbox) ->

		@view.setElement sandbox.element
		@view.render(sandbox)

		# console.log sandbox.element, sandbox.global, sandbox.args


module.exports = new DnaA()



