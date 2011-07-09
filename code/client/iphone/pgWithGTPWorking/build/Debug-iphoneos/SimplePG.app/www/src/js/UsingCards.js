var list= {
	xtype: 'list',
	dockedItems: {
		title: 'cars',
		dock: 'top',
		items: {
			iconMask: true,
			ui: 'plain',
			iconCls: 'add',
			handler: function() {
				panel.setCard('newcar');
			}
		}
	},
	itemTpl: '<div class="contact"><strong>{reg}</strong> - {state} - {type}</div>',
	listeners: {
		itemtap: function(item) {
			details.html = item.details;
			panel.setCard(details);
		}
	},
	store: carsList
};

var details= {
	xtype: 'panel',
	dockedItems: {
		title: 'Details',
		dock: 'top',
		items: {
			text: 'Back',
			ui: 'back',
			handler: function() {
				panel.setCard(list);
			}
		}
	}
};

var newcar= {
	xtype: 'panel',
	dockedItems: {
		title: 'New Car',
		dock: 'top',
		items: [{
			text: 'Back',
			ui: 'back',
			handler: function() {
				panel.setCard(list);
			}
		},{
			xtype: 'spacer'
		},{
			text: 'Ok',
			ui: 'confirm',
			handler: function() {
				panel.setCard(list);
			}
		}]
	}
};

var panel = new Ext.Panel({
	fullscreen: true,
	layout: 'card',
	items: [list]
});