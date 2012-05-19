gtp.views.CarsListView = {
	xtype: 'panel',
	id: 'mycars',
	cls: 'card2',
	dockedItems:[{
		xtype: 'toolbar',
		id: 'mycarstb',
		dock: 'top',
		title: 'My Cars',
		items: [{
			text: 'home',
			ui: 'back',
			handler: function(dis) {
				gtp.tabpanel.getActiveItem().setActiveItem('home',{
					type: 'slide',
					direction: 'right'
				});
			}
		},{
			xtype: 'spacer'
		},{
			iconMask: true,
			ui: 'plain',
			iconCls: 'add',
			title: 'add',
			handler: function(button, event) {
				gtp.showtabs=true;
				gtp.tabpanel.getActiveItem().setActiveItem('addcar',{
					type: 'slide',
					direction: 'left'
				});
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
				
				gtp.tabpanel.getActiveItem().down('#details').load(record);				
				gtp.tabpanel.getActiveItem().setActiveItem('details', {
					type: 'slide',
					direction: 'left'
				});
			},
			itemswipe: function(co,index,item,e) {
				// Try changing the disclosure icon to delete button.
				// Implement the delete here.
			}
		}
	}]
};