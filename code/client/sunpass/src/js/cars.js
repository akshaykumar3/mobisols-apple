gtp.views.CarsViewport=Ext.extend(Ext.Panel,{
	layout: 'card',
	fullscreen: true,
	cardSwitchAnimation: 'slide',
	initComponent: function(){
		Ext.apply(gtp.views,{
			carsList: new gtp.views.CarsList(),
			detailPanel: new gtp.views.DetailPanel(),
			entryCar: new gtp.views.EntryCar()
		});

		Ext.apply(this,{
			items: [
				app.views.carsList,
				app.views.detailPanel,
				app.views.entryCar			
			]		
		});

		gtp.views.CarsViewport.superclass.initComponent.apply(this,arguments);
	}
})
