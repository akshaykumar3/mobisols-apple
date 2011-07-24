gtp.App=Ext.extend(Ext.TabPanel,{
	fullscreen: true,
	defaultActiveTab: 'home',
	tabBar: {
		dock: 'bottom',
		ui: 'gray',
		layout: {
			pack: 'center'		
		}
	},
	cardSwitchAnimation: {
		type: 'slide',
		cover: true
	},
	initComponent: function() {
			
	}
})
