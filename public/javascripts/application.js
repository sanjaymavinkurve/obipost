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
				length: 100
			}
		},
		position: {
			corner: {
				target: 'rightMiddle',
				tooltip: 'leftMiddle'
			}
		},
		style: {
			padding: 5,
			background: '#dddddd',
			border: {
				width: 0
			},
			tip: {
				corner: 'leftMiddle',
				color: '#dddddd',
				size: {
					x: 10,
					y: 12
				}
			}
		}
	});
});
