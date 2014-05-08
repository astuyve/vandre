$(document).ready(function () {
	$('.click_row').click(function (e) {
		console.log($(this))
		var href = $(this).find('a').attr('href')
		var $btn = $(e.target)
		if (!$btn.hasClass('btn') && href) {
			window.location = href;
		}
	})

	$('.click_row').hover(function() {
		this.setAttribute('class', 'active');
	},
	function() {
		this.setAttribute('class', 'inactive');
	});
});
