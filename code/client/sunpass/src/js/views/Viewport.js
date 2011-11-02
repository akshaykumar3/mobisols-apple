gtp.views.HomeViewport = {
	xtype: 'panel',
	id: 'mviewport',
	fullscreen: true,
	layout: 'card',
	iconCls: 'home',
	title: 'Home',
	items: [
	    gtp.views.MainView,
	    gtp.views.CarsListView,
	    gtp.views.NewCarFormView,
	    gtp.views.CarDetailView,
	    gtp.views.SettingsFormView,
	    gtp.views.ChangePwdView
	]
};