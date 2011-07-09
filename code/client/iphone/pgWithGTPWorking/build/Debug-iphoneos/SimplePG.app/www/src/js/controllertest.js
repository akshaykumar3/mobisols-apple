controller=Ext.regController("clickButton",{
	show: function() {
		console.log('i am from controller');
		console.log('Is phone? '+Ext.is.Phone);
		console.log('Is android? '+Ext.is.Android);
		console.log('Is desktop? '+Ext.is.Desktop);
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
