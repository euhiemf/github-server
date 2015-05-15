window.underscore = window._ = _ = require 'underscore'
window.Backbone = Backbone = require 'backbone'
window.jQuery = window.$ = Backbone.$ = require 'jquery'

require './lib/backbone-deep-model.min.js'
require 'bootstrap'
require './lib/metris.jquery.js'

$(window).bind "load resize", () ->
	if $(@).width() < 768
		$('div.sidebar-collapse').addClass('collapse')
	else
		$('div.sidebar-collapse').removeClass('collapse')






config = require './config.coffee'

Router = require('./js/router.coffee')
Pages = require('./js/pages.coffee')
Menu = require('./js/menu.coffee')

router = new Router()
menu = new Menu()

menu.setRouter router

config
	router: router
	pages: new Pages()
	menu: menu





	# $(document).delegate("a", "click", (evt) ->
	# 	# Get the anchor href and protcol
	# 	href = $(this).attr("href")
	# 	protocol =  "#{this.protocol}//"

	# 	# Ensure the protocol is not part of URL, meaning its relative.
	# 	# Stop the event bubbling to ensure the link will not cause a page refresh.
	# 	if href.slice(protocol.length) != protocol
	# 		evt.preventDefault()

	# 	# Note by using Backbone.history.navigate, router events will not be
	# 	# triggered.  If this is a problem, change this to navigate on your
	# 	# router.
	# 	if href isnt 'no-link'
	# 		Backbone.history.navigate(href.replace(/\#/g, ''), true)
	# )
