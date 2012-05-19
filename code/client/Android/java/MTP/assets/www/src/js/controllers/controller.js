// controller for creating a new instance of application.
gtp.controllers = Ext.regController("load",{
	show: function() {
		
		gtp.views.Viewport = new Ext.Panel({
			fullscreen: true,
			layout: 'card',
			items: [
		        gtp.views.LoginPage,
		        gtp.views.RegPage
		    ]
		});
	},
	view: function(options){
		// Destroy panels created for login page and registration page.
		// Since there is no log out for a user. Those pages are no more useful.
		// This adds fastness to the application.
		gtp.views.Viewport.hide();
		
		gtp.tabpanel = new Ext.TabPanel({
			tabBar: {
				dock: 'bottom',
				layout: {
					pack: 'center'
				}
			},
			layout: 'card',
			defaultActiveTab: 'home',
			fullscreen: true,
			ui: 'light',
			cardSwitchAnimation: {
				type: 'slide',
				cover: true
			},
			items: [
		        gtp.views.HomeViewport,
		        gtp.views.PaidTollsListView
		        //gtp.views.MapView,
			],
			listeners: {
				beforecardswitch: function(dis, newCard, oldCard, index, animated) {
					if(newCard.getId() == 'mviewport') {
							newCard.setActiveItem('home', {
								type: 'slide',
								direction: 'right'
							});
					}
				}
			}
		});
		
		// Fetches User Data and adds them to stores.
		gtp.FetchUserData(options);
		
		Ext.dispatch({
			controller: 'get',
			action: 'vehicletypeslist'
		});
		
		Ext.dispatch({
			controller: 'get',
			action: 'ownertypeslist'
		});
		
		Ext.dispatch({
			controller: 'get',
			action: 'makeandmodels'
		});
	}
});