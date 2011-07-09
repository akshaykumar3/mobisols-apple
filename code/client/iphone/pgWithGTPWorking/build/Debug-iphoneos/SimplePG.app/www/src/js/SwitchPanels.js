Ext.setup({
	onReady: function(){
		
		firstPanel=new Ext.Panel({
			id: 'first',
			fullscreen: true,
			html: 'First Panel'
		});
		
		secondPanel=new Ext.Panel({
			id: 'second',
			fullscreen: true,
			html: 'Second Panel'
		});
		
		console.log('Switching panels started!!');
		mainPanel=new Ext.Panel({
			fullscreen: true,
			cardSwitchAnimation: 'slide',
			layout: 'card',
			dockedItems: [{
				id: 'sp',
				xtype: 'toolbar',
				title: 'Switches Panels',
				items:[{
					text: 'back',
					id: 'bk',
					ui: 'back',
					disabled: 'true',
					handler: function(){
						console.log('clicked back');
						mainPanel.setActiveItem('first');
						Ext.getCmp('sp').setTitle('Switches Panels');
						this.hasDisabled=true;
						Ext.getCmp('forward').disabled=false;
					}	
				},{
					xtype: 'spacer'
				},{
					text: 'forward',
					id: 'forward',
					ui: 'forward',
					handler: function(){
						console.log('clicked forward');
						mainPanel.setActiveItem('second');
						Ext.getCmp('sp').setTitle('Second Panel');
						this.disabled=true;
						Ext.getCmp('bk').disabled=false;
					}
				}]
			}],
			items: [firstPanel,secondPanel]
		});
	}
});
