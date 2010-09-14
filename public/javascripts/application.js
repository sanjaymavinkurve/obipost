$(function() {
	// Match all link elements with href attributes within the content div
	$('input').qtip({
		show: {
			delay: 0,
			when: {
				event: 'focus' 
			},
			effect: {
				type: 'fade',
				length: 0
			}
		},
		hide: {
			when: {
				event: 'focusout' 
			},
			effect: {
				type: 'fade',
				length: 250
			}
		},
		position: {
			corner: {
				target: 'rightMiddle',
				tooltip: 'leftMiddle'
			},
			adjust: {
				x: 4,
				y: 0
			}
		},
		style: {
			padding: 4,
			color: '#359455',
			border: {
				width: 0,
				color: '#aaaaaa'
			}
		}
	});
});
