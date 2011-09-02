reader.controller=Ext.regController("load",{
	show: function() {
		var userSlide = new Ext.Carousel({
            ui:'light',
			defaults: {
                cls: 'card'
            },
            items: [{
                title:'Tab 1',
				html : '1'
            },
            {
                title: 'Tab 2',
                html: '2'
            },
            {
                title: 'Tab 3',
                html: '3'
            }]
        });
        
	reader.launchHomeScreen = new Ext.Panel({
            fullscreen: true,
            layout: {
                type: 'vbox',
                align: 'stretch'
            },
            defaults: {
                flex: 1
            },
            items: [userSlide]
        });
	}
}