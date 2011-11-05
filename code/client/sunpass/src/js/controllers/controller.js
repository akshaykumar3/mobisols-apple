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
		        gtp.views.PaidTollsListView,
		        gtp.views.MapView,
			],			
			listeners: {
				cardswitch: function(curobj, newCard, oldCard, index, animated) {					
					/*if(oldCard.getId() == 'basicform' && gtp.settingschanged) {
						// Do ajax call to save the payment details. Same when clicked on the save button.
					}
					else if(oldCard.getId() == 'basicform' && !gtp.settingschanged) {
						oldCard.down('#settingsform').disable();
						var savebutton = oldCard.down('#savesettings');
						savebutton.setDisabled(false);
						savebutton.setText('edit');
					}*/
				}
			}
		});
		
		// Fetches User Data and adds them to stores.
		gtp.FetchUserData(options);
		Ext.dispatch({
			controller: 'get',
			action: 'cctypeslist'
		});
		
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