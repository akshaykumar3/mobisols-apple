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
				gtp.views.carsList,
				gtp.views.detailPanel,
				gtp.views.entryCar			
			]		
		});

		gtp.views.CarsViewport.superclass.initComponent.apply(this,arguments);
	}
})

Ext.reg('cars', gtp.views.CarsViewport);
