$(function() {

	$('.datepicker').datepicker({
		changeYear: true,
		yearRange: "-100:c",
		dateFormat: "yy-mm-dd",
		showOn: 'both',
		buttonImageOnly: true,
	});

	$.datepicker.setDefaults({
		changeYear: true,
		yearRange: "-100:c",
		dateFormat: "yy-mm-dd",
		showOn: 'both',
		buttonImageOnly: true,
	});

});