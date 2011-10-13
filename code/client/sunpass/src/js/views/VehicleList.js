gtp.views.Vehicle = Ext.extend(Ext.Panel, {
    fullscreen: true,
    layout: 'card',
    
    initComponent: function() {
        Ext.apply(this, {
            items: [
                { xtype: 'gtp.views.VehiclesList', id: 'vehiclesList' }
//                { xtype: 'gtp.views.VehiclesForm', id: 'vehiclesForm' },
//                { xtype: 'gtp.views.VehicleDetails', id: 'vehicleDetails' }
            ]
        });
        gtp.views.Viewport.superclass.initComponent.apply(this, arguments);
    },
});

gtp.views.VehiclesList = Ext.extend(Ext.Panel, {
	initComponent: function(){
		var addButton, titlebar, list;
		
		addButton = {
				itemId: 'addButton',
				iconCls: 'add',
				iconMask: true,
				ui: 'plain',
				handler: this.onAddAction,
				scope: this
		};
		
		titlebar = {
			dock: 'top',
			xtype: 'toolbar',
			title: 'My cars',
			items: [{
				xtype: 'spacer'
			}, addButton]
		};
		
		list = {
				xtype: 'list',
				itemTpl: '<div class="contact"><strong>{reg}</strong>, {state}</div>',
				store: carsList,
				scroll: 'vertical',
				emptyText: '<br/><h1>Add vehicles to ur store</h1>',
				onItemDisclosure: true,
				listeners: {
					scope: this,
					afterrender: this.afterRender,
					itemtap: this.onItemTapAction
				}
		};
		
		Ext.apply(this, {
			layout: 'fit',
			dockedItems: [titlebar],
			items: [list]
		});
		
	    gtp.views.VehiclesList.superclass.initComponent.call(this);		
	},
	
	afterRender: function(cmp) {
		//cmp.refresh();
	},
	
	onAddAction: function() {
		gtp.showtabs=true;
		gtp.tabpanel.setActiveItem('addcar');
	},
	
	onItemTapAction: function(co,index,item,e) {
		gtp.showtabs=true;
		var record=co.getRecord(co.getNode(index));
		
		gtp.tabpanel.getComponent('details').load(record);
		
		var homeform = Ext.getCmp('home');
		if(gtp.isAppEnabled && record.get('reg') == homeform.down('#activecar').getValue());
		gtp.tabpanel.setActiveItem('details');
	}
});

Ext.reg('gtp.views.VehiclesList', gtp.views.VehiclesList); 