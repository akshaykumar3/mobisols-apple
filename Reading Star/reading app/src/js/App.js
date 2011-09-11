Ext.setup({
    tabletStartupScreen: 'tablet_startup.png',
    phoneStartupScreen: 'phone_startup.png',
    icon: 'icon.png',
    glossOnIcon: true,
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
						cls:'btn-icon',
						height:72,
						width:72,
						style: {
							marginTop: '75px',
							marginBottom: '50px'
						},
						ui:'round',
						//text:"<center><img src='resources/img/icon.png'  style='float:center; height:72; width:72;' /></center>",
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
					align:'right',
					handler: function(){
						Ext.Msg.prompt("Welcome!", "What is your name?", Ext.emptyFn);
					}
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
					mainPanel.setActiveItem("chaptersPanel");	
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
					handler:function(){
						mainPanel.setActiveItem('usersList');
					}
				}
			]
		})
		
	chapterButton=new Array();
	i=0;
	for(i=0;i<10;i++)
	{
	  chapterButton[i]= new Ext.Button({
		ui:'round',
		height:30,
		width:150,
		centered:true,
		style:{
			marginTop:'10px',
			marginBottom:'10px',
			marginRight:'20px',
			marginBottom:'20px'
		},
		text:'<center>Chapter '+i+'</center>',
		handler:function(){
			var c=Ext.getCmp('content');
			this.popup=modePopUp;
			this.popup.show('pop');
		}
	  });
	}
	
	var chaptersList = new Ext.Panel({
		id:'chaptersList',
		height:400,
		width:300,
		scroll:'vertical',
		layout:{
		type:'vbox',
		align:'center'
		},
		items:chapterButton
	});
		
	var chaptersPanel = new Ext.Panel({
		id:'chaptersPanel',
		fullscreen:true,
		ui:'light',
		dockedItems:[
			chaptersList,
			{
				xtype:'panel',
				layout:{
					type:'vbox',
					align:'center'
				},
				centered:true,
				style:{
					marginTop:'20px'
				},
				items:[
					{
						xtype:'button',
						ui:'confirm',
						text:'Stories',
						centered:true,
						handler:function(){
							mainPanel.setActiveItem('storiesPanel');
						}
					}
				]
			}
		]
	});
	
	var contentPopUp =new Ext.Panel({
		id:'content.items.pause.popup',
		floating: true,
		modal: true,
		centered: true,
		width: 200,
		styleHtmlContent: true,
		items:[
			{
				xtype:'button',
				ui:'round',
				text:'Finish',
				handler:function(){
					Ext.getCmp('content.items.pause.popup').hide();
					mainPanel.setActiveItem('chaptersPanel');
				}
			},
			{
				xtype:'button',
				ui:'round',
				text:'Change Mode',
				style:{
					marginTop:'20px'
				},
				handler:function(){
					var p=Ext.getCmp('content.items.pause.popup');
					p.hide();
					Ext.getCmp('content.items.pause.popup').hide();
					var c=Ext.getCmp('content');
					this.popup=modePopUp;
					this.popup.show('pop');
				}
			}
		]
	});
	
	var modePopUp =new Ext.Panel({
		id:'content.mode.popup',
		floating: true,
		modal: true,
		centered: true,
		width: 200,
		styleHtmlContent: true,
		items:[
			{
				xtype:'button',
				ui:'round',
				text:'Mode1',
				handler:function(){
					Ext.getCmp('content.mode.popup').hide();
						content.show();
						mainPanel.setActiveItem('readingPanel');
					}
			},
			{
				xtype:'button',
				ui:'round',
				text:'Mode2',
				style:{
					marginTop:'20px'
				},
				handler:function(){
					Ext.getCmp('content.mode.popup').hide();
						content.show();
						mainPanel.setActiveItem('readingPanel');
					}
			},
			{
				xtype:'button',
				ui:'round',
				text:'Mode3',
				style:{
					marginTop:'20px'
				},
				handler:function(){
					Ext.getCmp('content.mode.popup').hide();
						content.show();
						mainPanel.setActiveItem('readingPanel');
					}
			}
		]
	});
	
	var content=new Ext.Panel({
				id:'content',
				floating: true,
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
					height:80,
					width:300,
					layout:{
						type:'hbox',
						align:'center'
					},
					style:{
						marginTop:'10px'
					},
					items:[
						{
							dock:'left',
							xtype:'button',
							ui:'round',
							text:'Pause',
							handler:function(){
							this.popup=contentPopUp;
							this.popup.show('pop');
							}
						},
						{
							xtype:'spacer'
						},
						{
							xtype:'button',
							ui:'round',
							text:'Finish',
							dock:'right',
							handler:function(){
								mainPanel.setActiveItem('chaptersPanel');
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
			height:600,
			width:300,
			layout:{
				type:'vbox',
				align:'center'
			},
			items:[
				{
				  xtype:'panel',
				  height:450,
				  width:300,
				  style:{
					backgroundColor:'white'
				  }
				},
				{
				  xtype:'panel',
				  layout:{
				  type: 'hbox',
				  align:'right'
				  },
				  items:[
					{
					xtype:'button',
					ui:'back',
					html:'Chapters',
					style:{
						marginTop:'10px'
					},
					handler: function(){
						mainPanel.setActiveItem('chaptersPanel');
					}
					}
				  ]
				}
			]
		});
		
		//main panel to switch all panels
		var mainPanel=new Ext.Panel({
			fullscreen:true,
			layout:'card',
			items:[usersList,storiesPanel,chaptersPanel,readingPanel,graph]
		});
		
		mainPanel.setActiveItem("usersList");
		
		new Ext.Panel({
			fullscreen:true,
			layout:'fit',
			items:[mainPanel]
		})
    }
});