gtp.tabs.PaidTollsListView = 			{
	title: 'Paid tolls',
	id: 'CashStack',
	iconCls: 'CashStack',
	cls: 'demo-list',
	dockedItems: [{
		xtype: 'toolbar',
		title: 'Paid Tolls',
		dock: 'top',
		items: [{
			text: 'clear'
		}]
	},{
		xtype: 'list',
		grouped: true,
		fullscreen: true,
		scroll: 'vertical',
		store: paidTolls,
		itemTpl: '<div class="contact">{amount}$ on <strong>{date}</strong> @ {location} - {reg}</div>'
	}]
};