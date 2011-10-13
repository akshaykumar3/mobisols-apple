gtp.tabs.CarsViewport = {
	xtype: 'panel',
	id: 'carsviewport',
	layout: 'card',
	fullscreen: true,
	iconCls: 'Car',
	title: 'My Cars',
	items: [
        gtp.tabs.CarsListView,
        gtp.tabs.NewCarFormView,
        gtp.tabs.CarDetailView
	]
};