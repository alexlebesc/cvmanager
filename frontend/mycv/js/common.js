//The build will inline common dependencies into this file.
requirejs.config(
{
	paths:
	{
		// Libraries
		'jquery'					: '../../bower_components/jquery/dist/jquery.min',
		'modernizr'					: '../../bower_components/awesomeness-boilerplate/app/js/vendor/modernizr',
		'prism'						: '../../bower_components/prism/prism',
		'selectivizr'				: '../../bower_components/awesomeness-boilerplate/app/js/vendor/customized/selectivizr',
		'requestanimationframe'		: '../../bower_components/awesomeness-boilerplate/app/js/vendor/customized/requestAnimationFrame',

		// Custom modules
		'collapse'					: '../../bower_components/awesomeness-boilerplate/app/js/modules/Collapse',
		'tabcontroller'				: '../../bower_components/awesomeness-boilerplate/app/js/modules/Tabs',
		'tabacccontroller'			: '../../bower_components/awesomeness-boilerplate/app/js/modules/Tabs2Accordion',
		'scrollcontroller'			: '../../bower_components/awesomeness-boilerplate/app/js/modules/Scroll',
		'stickycontroller'			: '../../bower_components/awesomeness-boilerplate/app/js/modules/Sticky',
		'flyoutcontroller'			: '../../bower_components/awesomeness-boilerplate/app/js/modules/Flyout',
		'entrycontroller'			: '../../bower_components/awesomeness-boilerplate/app/js/modules/Entry',
		'gridcontroller'			: '../../bower_components/awesomeness-boilerplate/app/js/modules/Grid',
		'dropdown'					: '../../bower_components/awesomeness-boilerplate/app/js/modules/Dropdown',
		'slider'					: '../../bower_components/awesomeness-boilerplate/app/js/modules/Slider'
	},

	shim:
	{
		// Since it's not require-jquery.js
		// we need to shim it.
		'jquery':
		{
			exports: '$'
		},

		'modernizr':
		{
			exports: 'Modernizr'
		},

		'prism':
		{
			exports: 'Prism'
		}
	}
});

require(["jquery", "modernizr", "selectivizr", "prism"], function($, Modernizr, Selectivizr, Prism)
{
	// Add this event listener to prevent mobile safari 
	// from disabling the ::active pseudo class
	$(document).on("touchstart", function() {});

	// Initialize code highlighting
	Prism.highlightAll();

	// Check if we need Selectivizr
	if (!Modernizr.mq('only all'))
	{
		var slvzr = new Selectivizr();
		slvzr.startup();
	}

	if (!Modernizr.csstransitions) {
		$("body").addClass("no-toggle-menu");
	}
	
	// test for boxsizing
	// developer.mozilla.org/en/CSS/box-sizing
	// github.com/Modernizr/Modernizr/issues/248
	Modernizr.addTest("boxsizing", Modernizr.testAllProps("boxSizing") && (document.documentMode === undefined || document.documentMode > 7));
				
});