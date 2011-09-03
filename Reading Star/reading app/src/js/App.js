Ext.setup({
    tabletStartupScreen: 'tablet_startup.png',
    phoneStartupScreen: 'phone_startup.png',
    icon: 'icon.png',
    glossOnIcon: false,
    onReady: function() {
        
		var usersCarousel = new Ext.Carousel({
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
			items:[{text:'About'
					}]
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
            items: [usersCarousel]
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
		
		var storyPanel = new Array();
		var i=0;
		for(i=0;i<18;i++)
		{
		storyPanel[i]=new Ext.Panel({
			height:100,
			width:100,
			
			//fullscreen:true,
			style:"background-color: #fee;",
			layout:{
			type:'hbox',
			align:'left'
			},
			items:[{
				height:100,
				width:100,
				xtype:'button',
				ui:'round',
				text:"<center><img src='resources/img/icon.png'  style='float:center; height:72; width:72;' /></center>",
				align:'center'
			}]
		});
		}

		/*for(i=0;i<18;i++)
		{
			storyPanel[i]=new Ext.Button({
				height:100,
				width:100,
				ui:'round',
				text:"<center><img src='resources/img/icon.png'  style='float:center; height:72; width:72;' /></center>",
				align:'center'
			})
		}*/
		
		var storiesHorizontalPanel=new Array();
		for(i=0;i<18/3;i++)
		{
		 storiesHorizontalPanel[i]=new Ext.Panel({
			
			//fullscreen:true,
			layout:{
			type:'hbox',
			align:'stretch',
			pack:'center'
			},
			items:[storyPanel[i*3+0],storyPanel[i*3+1],storyPanel[i*3+2]]
		});
		}
		
		var storiesList = new Array();
		for(i=0;i<2;i++)
		{
		storiesList[i] = new Ext.Panel({
			id:"storiesList"+i,
			height:300,
			width:300,
			defaults:{
				flex:1
			},
			layout:{
			type:'vbox',
			align:'stretch'
			},
			items:[storiesHorizontalPanel[i*3+0],storiesHorizontalPanel[i*3+1],storiesHorizontalPanel[i*3+2]]
		});
		}
		
		var storiesCarousel = new Ext.Carousel({
			id:"storiesCarousel",
			fullscreen:true,
			ui : 'light',
            items: [storiesList[0],storiesList[1]]
		});
		
		/*var chaptersList = new Ext.Panel({
			id:"chaptersList",
			fullscreen:true,
			ui: 'light',
			items:[
				{
				xtype:'list',
				width:300,
				height:500,
				onItemDisclosure: function(record, btn, index) {
					Ext.Msg.alert('Tap','you have selected chapter'+i);
				},
				store: ChaptersStore, 
				itemTpl: '<strong>{name}</strong>'
				}
			]
		});
		*/
		
		var graph = new Ext.Panel({
			id:"graph",
			fullscreen:true,
			items:[]
		});
		
		//main panel to switch all panels
		var mainPanel=new Ext.Panel({
			fullscreen:true,
			layout:'card',
			items:[usersList,storiesCarousel,graph]
		});
		
		mainPanel.setActiveItem("storiesCarousel");
		
		new Ext.Panel({
			fullscreen:true,
			layout:'fit',
			items:[mainPanel]
		})
    }
});