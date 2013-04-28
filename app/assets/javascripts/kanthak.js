$(document).ready(function(){
	$('a[data-method="delete"]').bind('ajax:success', function(){
		var element = this;
		$(element).parent().parent().fadeOut(600, function() {
			element.remove;
			//alert("Row deleted");
		});

	});

});
