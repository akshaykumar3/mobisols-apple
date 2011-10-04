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
			layout: {
				pack: 'right'
			},
			items: [{
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
			emptyText: 'Add Cars into ur Store',
			html: 'Add Cars into ur Store',
			itemTpl: '<div class="contact"><strong>{reg}</strong>, {state}</div>',
			setActiveItem: this,
			onItemDisclosure: true,
			listeners: {
				itemtap: function(co,index,item,e) {
					gtp.showtabs=true;
					var record=co.getRecord(co.getNode(index));
					
					gtp.tabpanel.getComponent('details').load(Ext.ModelMgr.create({
						reg: record.get('reg'),
						state: record.get('state'),
						type: record.get('type'),
						startDate: record.get('startDate'),
						endDate: record.get('endDate'),
						isActive: record.get('isActive'),
						ownerType: record.get('ownerType'),
						vehicleId: record.get('vehicleId')
					},'Cars'));
					
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