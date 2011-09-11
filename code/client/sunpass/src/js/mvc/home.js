gtp.views.Home=Ext.extend(Ext.Panel,{
	layout: 'card',
	initComponent: function(){
		this.homepanel=new Ext.Panel({
			layout: 'fit',
			xtype: 'formpanel',
			dockedItems: [{
				xtype: 'toolbar',
				dock: 'top',
				title: 'Mobile Toll Pass',
				layout: {
					pack: 'left'
				},
				items: [{
					iconMask: true,
					ui: 'plain',
					iconCls: 'SunPassLogo'
				},{
					xtype: 'spacer'
				},{
					text: 'help',
					ui: 'green'
				}]
			}],
			items: [{
				
			}]
		});
	}
});

Ext.reg('home', gtp.views.Home);
		
