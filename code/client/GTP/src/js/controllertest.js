controller=Ext.regController("clickButton",{
	show: function() {
		var today=new Date();
		var formattedDate= today.format('M j, Y g:i:s A');
		console.log('Formatted Date '+formattedDate);
		console.log('i am from controller');
		console.log('Is phone? '+Ext.is.Phone);
		console.log('Is android? '+Ext.is.Android);
		console.log('Is desktop? '+Ext.is.Desktop);
		console.log('Date: '+today);
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
						action: 'show',
						time: 1000
					})
				} 
			}]
		});
	}
})
