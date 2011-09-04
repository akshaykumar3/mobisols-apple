Ext.setup({
    tabletStartupScreen: 'tablet_startup.png',
    phoneStartupScreen: 'phone_startup.png',
    icon: 'icon.png',
    glossOnIcon: false,
    onReady: function() {
        
		var userButton = new Array();
		var i;
		for(i=0;i<3;i++)
		{
			userButton[i] = {
                id: 'user'+i,
				xtype:'panel',
				fullscreen:true,
				layout:{
				type:'vbox',
				align:'center'
				},
				items:[
					{
						xtype:'button',
						height:200,
						width:200,
						style: {
							marginTop: '75px',
							marginBottom: '50px'
						},
						ui:'round',
						text:"<center><img src='resources/img/icon.png'  style='float:center; height:72; width:72;' /></center>",
						align:'center',
						handler:function(){
							mainPanel.setActiveItem("storiesPanel");
						}
					},
					{
						html: '<center>user '+i+'</center>'
					}
				]
            }
		}
		
		var usersCarousel = new Ext.Carousel({
            ui : 'light',
			align:'center',
			items: userButton
        });
		
       var screen1ToolBar = new Ext.Toolbar({
			dock:'top',
			title:'Reading Star',
			items:[
				{
					xtype:'button',
					ui:'round',
					text:'About'
				},
				{
					xtype:'spacer'
				},
				{
					xtype:'button',
					ui:'round',
					text:'Add',
					align:'right'
				}
			]
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
		
		var storyButton = new Array();
		var i=0;
		for(i=0;i<18;i++)
		{
			storyButton[i]=new Ext.Button({
				height:72,
				width:72,
				style: {
						marginTop: '25px',
						marginBottom: '25px',
						marginRight:'25px'
					},
				ui:'round',
				text:"<center><img src='resources/img/icon.png'  style='float:center; height:72; width:72;' /></center>",
				align:'center',
				handler: function(){
					content.show();
					mainPanel.setActiveItem('readingPanel');	
				},
				story:'hfjadsfhlasf'
			})
		}
		
		var storiesHorizontalPanel=new Array();
		for(i=0;i<18/3;i++)
		{
		 storiesHorizontalPanel[i]=new Ext.Panel({
			style: {
						marginTop: '25px',
						marginBottom: '25px',
					},
			layout:{
			type:'hbox',
			align:'stretch',
			pack:'center'
			},
			items:[storyButton[i*3+0],storyButton[i*3+1],storyButton[i*3+2]]
		});
		}
		
		var storiesList = new Array();
		for(i=0;i<2;i++)
		{
		storiesList[i] = new Ext.Panel({
			id:"storiesList"+i,
			height:300,
			width:300,
			layout:{
			type:'vbox',
			align:'stretch'
			},
			items:[
			storiesHorizontalPanel[i*3+0],storiesHorizontalPanel[i*3+1],storiesHorizontalPanel[i*3+2],
			]
		});
		}
		
		var storiesCarousel = new Ext.Carousel({
			fullscreen:true,
			ui : 'light',
            items: [storiesList[0],storiesList[1]]
		});
		
		var storiesPanel = new Ext.Panel({
			id:'storiesPanel',
			fullscreen:true,
			ui:'light',
			dockedItems:[
				{
					xtype:'panel',
					dock:'top',
					items:[storiesCarousel]
				},
				{
					xtype:'button',
					ui:'decline',
					text:'Another User',
					dock:'bottom',
					align:'center',
					style: {
						marginTop: '25px',
						marginBottom: '25px',
						marginRight:'25px',
						marginLeft:'25px'
					},
					handle:function(){
						mainPanel.setActiveItem('usersList');
					}
				}
			]
		})
		
		/*var chaptersList = new Ext.Panel({
			id:"chaptersList",
			fullscreen:true,
			ui: 'light',	
			items:[
				{
				xtype:'list',
				fullscreen:true,
				store: chaptersStore, 
				scroll: 'vertical',
				itemTpl: '<strong>{name}</strong>',
				onItemDisclosure: function() {
					Ext.Msg.alert('Tap','you have selected chapter'+i);
					}
				}
			]
		});*/
		
	var content=new Ext.Panel({
				autoRender: true,
				floating: true,
				modal: true,
				centered: true,
				hideOnMaskTap: false,
				height: 500,
				width: 300,
				scroll: 'vertical',
				html: [
						'<p>Story here',
						'</p>'
					].join(""),
				dockedItems:[
				{
					dock : 'bottom',
					xtype: 'panel',
					height:100,
					width:300,
					layout:{
						type:'hbox',
						align:'center'
					},
					style:{
						marginTop:'30px'
					},
					items:[
						{
							dock:'left',
							xtype:'button',
							ui:'confirm-round',
							text:'Play',
							handler:function(){
								//mainPanel.setActiveItem('usersList');
							}
						},
						{
							xtype:'spacer'
						},
						{
							xtype:'button',
							ui:'decline-round',
							text:'Stop',
							dock:'right',
							handler:function(){
								//content.hide();
								mainPanel.setActiveItem('graph');
							}
						}
					]
				}
			]
				});
		var readingPanel = new Ext.Panel({ 
			id:'readingPanel',
			items:[content]
		});
		
		var graph = new Ext.Panel({
			id:"graph",
			fullscreen:true,
			items:[
				{
					xtype:'button',
					ui:'button',
					text:'home'
				}
			]
		});
		
		//main panel to switch all panels
		var mainPanel=new Ext.Panel({
			fullscreen:true,
			layout:'card',
			items:[usersList,storiesPanel,readingPanel,graph]
		});
		
		mainPanel.setActiveItem("usersList");
		
		new Ext.Panel({
			fullscreen:true,
			layout:'fit',
			items:[mainPanel]
		})
    }
});