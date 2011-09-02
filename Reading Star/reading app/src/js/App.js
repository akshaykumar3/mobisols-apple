Ext.setup({
    tabletStartupScreen: 'tablet_startup.png',
    phoneStartupScreen: 'phone_startup.png',
    icon: 'icon.png',
    glossOnIcon: false,
    onReady: function() {
        
		var carousel = new Ext.Carousel({
            ui : 'light',
			defaults: {
                cls: 'card'
            },
            items: [{
                title:'Tab 1',
				html: '1'
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
		
       var screen1ToolBar = new Ext.Toolbar({
			dock:'top',
			title:'Toolbar',
			items:[{text:'About'}]
	   });
	   
       var userSlider = new Ext.Panel({
            width:384,
			height:512,
			dock:'top',
			//fullscreen:true,
			layout: "fit",
            defaults: {
                flex: 1
            },
            items: [carousel]
        });
		
		var usersList=new Ext.Panel({
			id:"usersList",
			fullscreen:true,
			layout:{
			type:"vbox",
			align:"stretch"
			},
			defaults:{
			flex : 1
			},
			//items:[userSlider],
			dockedItems:[screen1ToolBar,userSlider]
		});
		
		var storyPanel=new Ext.Panel({
			fullscreen:true,
			style:"background-color: #fee;",
			layout:{
			type:'hbox',
			align:'stretch'
			},
			items:[]
		});
		
		var storyPanel2=new Ext.Panel({
			fullscreen:true,
			style:"background-color: #fcc;",
			layout:{
			type:'hbox',
			align:'stretch'
			},
			items:[]
		});
		
		var storyPanel3=new Ext.Panel({
			fullscreen:true,
			style:"background-color: #caa;",
			layout:{
			type:'hbox',
			align:'stretch'
			},
			items:[]
		});
		
		var storiesHorizontalPanel=new Ext.Panel({
			fullscreen:true,
			layout:{
			type:'hbox',
			align:'stretch'
			},
			dockedItems:[storyPanel,storyPanel2,storyPanel3]
		});
		
		var storiesList = new Ext.Panel({
			id:"storiesList",
			fullscreen:true,
			layout:{
			type:'vbox',
			align:'stretch'
			},
			dockedItems:[storiesHorizontalPanel,storiesHorizontalPanel,storiesHorizontalPanel]
		});
		
		//main panel to switch all panels
		var mainPanel=new Ext.Panel({
			fullscreen:true,
			layout:'card',
			items:[usersList,storiesList]
		});
		
		mainPanel.setActiveItem("storiesList");
		
		new Ext.Panel({
			fullscreen:true,
			layout:'fit',
			items:[mainPanel]
		})
    }
});