gtp.views.HomeViewport = {
	xtype: 'panel',
	id: 'mviewport',
	fullscreen: true,
	layout: 'card',
	iconCls: 'home',
	title: 'Home',
	cardSwitchAnimation: 'slide',
	items: [
	    gtp.views.MainView,
	    gtp.views.CarsListView,
	    gtp.views.NewCarFormView,
	    gtp.views.CarDetailView,
	    gtp.views.SettingsFormView,
	    gtp.views.ChangePwdView
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
};