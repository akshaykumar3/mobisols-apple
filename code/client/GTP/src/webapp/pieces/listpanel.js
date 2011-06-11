ListPanel =new Ext.Application({
	name: "ListPanel",
	launch: function(){
		console.log('application is launched');
		/*ListPanel.lp=new Ext.List({
			id: 'briefList',
			store: ListPanel.ListStore,
			height: 600,
			itemTpl: '<div class="contact">RegNo: {reg} - {state} - {cartype} </div>'
        });
		var upToolBar={
			xtype: 'toolbar',
			title: 'MyCars',
			dock: 'top'
		};*/
			ListPanel.customPanel=Ext.extend(Ext.Panel, {
				dockedItems: [{
					xtype: 'toolbar',
					title: 'MyCars',
					layout: {
						pack: 'right'
					},
					items: [{
						iconMask: true,
						ui: 'plain',
						iconCls: 'add',
						itemId: 'addCar'
					}]
				}],	
				fullscreen: true,
				layout: 'card',
				cardSwitchAnimation: 'slide',
				items: [{
					xtype: 'list',
					store: ListPanel.ListStore,
					scroll: 'vertical',
					itemTpl: '<div class="contact">RegNo: {reg} - {state} - {cartype} </div>'
        		}],
				/*initComponent: function() {
					ListPanel.customPanel.superclass.initComponent.apply(this, arguments);
				}*/
			});
			new ListPanel.customPanel();
	}
});