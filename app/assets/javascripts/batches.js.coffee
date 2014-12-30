# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

loadBatch = ->
	$('#items').on 'keydown','.batch-item', (e)->
		if $('.batch-item').last().val() != ""
			$('.new-item-btn').click()
	$('.color-picker').minicolors()


$(document).on('ready page:load', loadBatch);