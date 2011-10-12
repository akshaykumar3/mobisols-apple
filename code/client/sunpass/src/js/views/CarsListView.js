gtp.tabs.CarsListView = {
	title: 'My cars',
	iconCls: 'Car',
	id: 'mycars',
	cls: 'card2',
	items: [{
		xtype: 'panel',
		fullscreen: true,
		layout: 'fit',
		id: 'dp',
		dockedItems:[{
			xtype: 'toolbar',
			id: 'mycarstb',
			dock: 'top',
			title: 'My Cars',
			items: [{
				xtype: 'spacer'
			},{
				iconMask: true,
				ui: 'plain',
				iconCls: 'add',
				title: 'add',
				handler: function(button, event) {
					gtp.showtabs=true;
					gtp.tabpanel.setActiveItem('addcar');
				}
			}]
		}],
		items: [{
			xtype: 'list',
			id: 'listid',
			fullscreen: true,
			store: carsList,
			singleSelect: true,
			scroll: 'vertical',
			emptyText: 'Add Vehicles into ur Store',
			itemTpl: '<div class="contact"><strong>{reg}</strong>, {state}</div>',
			setActiveItem: this,
			onItemDisclosure: true,
			listeners: {
				afterrender: function(cmp){
					cmp.refresh();
				},
				itemtap: function(co,index,item,e) {
					gtp.showtabs=true;
					var record=co.getRecord(co.getNode(index));
					
					gtp.tabpanel.getComponent('details').load(record);
					
					var homeform = Ext.getCmp('home');
					if(gtp.isAppEnabled && record.get('reg') == homeform.down('#activecar').getValue());
					gtp.tabpanel.setActiveItem('details');
				},
				itemswipe: function(co,index,item,e) {
					// Try changing the disclosure icon to delete button.
					// Implement the delete here.
				}
			}
		}]
	}]
};