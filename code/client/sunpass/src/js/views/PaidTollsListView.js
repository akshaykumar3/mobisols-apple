gtp.views.PaidTollsListView = {
	xtype: 'panel',
	layout: 'fit',
	title: 'Paid tolls',
	id: 'CashStack',
	iconCls: 'CashStack',
	cls: 'demo-list',
	dockedItems: [{
		xtype: 'toolbar',
		title: 'Paid Tolls',
		dock: 'top',
		items: [{
			text: 'clear',
			handler: function(dis, event) {
				// clear items in the list.
			}
		}]
	},{
		xtype: 'list',
		grouped: true,
		fullscreen: true,
		emptyText: 'No payments are made yet, Start using the app!!',
		scroll: 'vertical',
		store: gtp.stores.paidTolls,
		itemTpl: '<div class="contact">{amount}$ on <strong>{date}</strong> @ {location} - {reg}</div>',
		listeners: {
			afterrender: function(cmp) {
				cmp.refresh();
			}
		}
	}]
};