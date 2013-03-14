seajs.config({
	plugins: ['shim'],
	alias: {
		'jquery': {
			src: 'lib/jquery-1.9.1.min.js',
			exports: 'jQuery'
	    },
		'underscore': {
			src: 'lib/underscore-1.4.4.js',
			exports: '_'
	    },
		'backbone': {
			src: 'lib/backbone-0.9.10.js',
			deps: ['jquery', 'underscore'],
			exports: 'Backbone'
	    }
	}
});
