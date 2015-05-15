module.exports = do -> class Pages

	pages: []

	global: {}

	browserifyLoad: (assets) ->
		for key, val of assets
			@pages[key] = val

	render: (page_name, args...) ->
		page = @pages[page_name]
		id = page.id

		dom_id = "page-container-#{id}"

		el = $('.main-app-container').find "#" + dom_id

		if el.length is 0
			el = $("<div id='#{dom_id}' class='page'></div>")
			$('.main-app-container').append el

		$('.main-app-container').find('.page.active').removeClass 'active'

		el.addClass 'active'

		page.trigger 'render', {
			element: el
			global: @global
			args: args
		}