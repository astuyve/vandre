$(document).ready(function () {
	$('.click_row').click(function () {
		var href = $(this).find('a').attr('href')
		if (href) {
			window.location = href;
		}
	})

	$('.click_row .btn').click(function(e) {
			e.stopPropagation();
			
		});

	$('.click_row').hover(function() {
		this.setAttribute('class', 'active');
	},
	function() {
		this.setAttribute('class', 'inactive');
	});
});
