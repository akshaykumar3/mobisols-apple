ListPanel =new Ext.Application({
	name: "ListPanel",
	launch: function(){
		console.log('application is launched');
		ListPanel.lp=new Ext.List({
			id: 'briefList',
			store: ListPanel.ListStore,
			height: 600,
			itemTpl: '<div class="contact">RegNo: {reg} - {state} - {cartype} </div>'
        });
		var upToolBar={
			xtype: 'toolbar',
			title: 'MyCars',
			dock: 'top'
		};
		ListPanel.mainPanel=new Ext.Panel({
			fullscreen: true,
			layout: 'auto',
			cardSwitchAnimation: 'slide',
			items: [upToolBar,ListPanel.lp]
		});
	}
});