Ext.setup({
	onReady: function() {
		var panel=new Ext.Panel({
			fullscreen: true,
			cardSwitchAnimation: 'slide',
			layout: 'vbox',
			items: [{
				xtype: 'textfield',
				label: 'Name',
				id: 'name'
			},{
				xtype: 'button',
				width: '150px',
				text: 'Click Me',
				handler: function(btn){
					var t=Ext.getCmp('name');
					console.log('button clicked');
					t.setValue("hello pradeep");
				}
			}]
		});
	}
});