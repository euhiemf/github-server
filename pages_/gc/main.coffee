
class GCView extends Backbone.View

	rendered: false 

	render: (sandbox) ->

		if not @rendered
			@$el.html('Welcome to the GC skew page!');
			@rendered = true




class GC extends Backbone.Model

	id: 'gc'

	initialize: ->

		@view = new GCView()

		@on 'render', @render, @

	render: (sandbox) ->

		@view.setElement sandbox.element
		@view.render(sandbox)

		# console.log sandbox.element, sandbox.global, sandbox.args


module.exports = new GC()



