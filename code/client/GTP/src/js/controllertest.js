controller=Ext.regController("clickButton",{
	show: function() {
		console.log('i am from controller');
		var id=new Ext.ux.UUID();
		console.log('UUID: '+id);
	}
})

Ext.setup({
	onReady: function(){
		this.Viewport=new Ext.Panel({
			fullscreen: true,
			cardSwitchAnimation: 'slide',
			items: [{
				xtype: 'button',
				text: 'Click Me',
				handler: function(){
					Ext.dispatch({
						controller: 'clickButton',
						action: 'show'
					})
				} 
			}]
		});
	}
})
