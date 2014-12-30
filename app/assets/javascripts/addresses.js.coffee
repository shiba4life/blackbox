loadAddress = ->
	if $('#address_picker').length != 0
		addressPicker = new AddressPicker(map: 
			id: '#map'
		)
		$('#address_picker').typeahead null,
			displayKey: 'description'
			source: addressPicker.ttAdapter()
		addressPicker.bindDefaultTypeaheadEvent($('#address_picker'))
		$(addressPicker).on 'addresspicker:selected', (event, result)->
			$('#address_lat').val(result.lat())
			$('#address_lng').val(result.lng())
		$('#address_picker').bind("typeahead:selected", addressPicker.updateMap);
		$('#address_picker').bind("typeahead:cursorchanged", addressPicker.updateMap);
	$('body').on 'click', '.get-browser-location', ->
		if navigator.geolocation
			navigator.geolocation.getCurrentPosition(showPosition)
		else
			console.log "Geolocation not supported by this browser"
	showPosition = (position)->
		console.log "Lat: " + position.coords.latitude + " Lng: " + position.coords.longitude
		$('#address_lat').val(position.coords.latitude)
		$('#address_lng').val(position.coords.longitude)

$(document).on('ready page:load', loadAddress);