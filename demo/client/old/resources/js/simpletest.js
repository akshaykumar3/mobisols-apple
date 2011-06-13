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
					console.log('button clicked');
					var t=Ext.getCmp('name');
					t.value="hello pradeep";
					t.update();
				}
			}]
		});
	}
});