gtp.tabs.SettingsViewport = {
	xtype: 'panel',
	title: 'Settings',
	layout: 'card',
	fullscreen: true,
	id: 'basicform',
	iconCls: 'AccountSettings',
	cls: 'card4',
	items: [gtp.tabs.SettingsFormView, gtp.tabs.ChangePwdView]
};
