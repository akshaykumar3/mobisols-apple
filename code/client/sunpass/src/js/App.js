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
		if(navigator.onLine){
			this.items=[{
				xtype: 'home',
				iconCls: 'home',
				title: 'home'
			}];
		} else {
			this.on('render',function() {
				this.el.mask('Internet Connection is required');
			},this)
		}
		
		gtp.App.superclass.initComponent.call(this);
	}
})
