# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@onPhotoupload = (event)->
	urls = $('#item_filepicker_image_urls').val()
	$.ajax '/preview_images?image_urls=' + urls