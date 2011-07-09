CarsList = new Ext.Application({
    name: "CarsList",

    launch: function() {
		vehicleInfo = new Ext.Template(
			'<br/>State: <input type="text" value={state} name="st" readonly=readonly>',
			'<br/>RegNo: <input type="text" value={reg} name="rg" readonly=readonly>',
			'<br/>Type: <input type="text" value={cartype} name="ct" readonly=readonly>'
		);
		stateTpl = new Ext.XTemplate(
			'{state}'
		);
        CarsList.detailPanel = new Ext.Panel({
            id: 'detailpanel',
            tpl: vehicleInfo,
            dockedItems: [
				{
					xtype: 'fieldset',
					title: 'EditCar',
					dock: 'bottom',
					defaults: {
						labelWidth: '40%'
					},
					items: [
						{
							xtype: 'textfield',
							label: 'State',
							name: 'tf',
							data: stateTpl
						},
						{
							xtype: 'textfield',
							label: 'Reg',
							name: 'rgt',
						},
						{
							xtype: 'textfield',
							label: 'Type',
							name: 'tp'
						}
					]
				},
                {
                    xtype: 'toolbar',
					dock: 'bottom',
                    items: [{
                        text: 'back',
                        ui: 'back',
                        handler: function() {
                            CarsList.Viewport.setActiveItem('disclosurelist', {type:'slide', direction:'right'});
							CarsList.detailPanel.update(tf);
                        }
                    }]
                },
				{	
						xtype: 'button',
						dock: 'bottom',
						text: 'edit',
						ui: 'normal',
						width: '100px'
				}
            ]
        });

        CarsList.listPanel = new Ext.List({
            id: 'disclosurelist',
            store: CarsList.ListStore,
			grouped: true,
            itemTpl: '<div class="contact">RegNo: {reg} </div>',
            onItemDisclosure: function(record, btn, index) {
                CarsList.detailPanel.update(record.data);
                CarsList.Viewport.setActiveItem('detailpanel');
            }
        });

		/*toolBarDocked= new Ext.ToolBar({
			dock: 'bottom',
			title: 'MyCars'
		});*/
			
        CarsList.Viewport = new Ext.Panel ({
            fullscreen: true,
            layout: 'card',
            cardSwitchAnimation: 'slide',
            items: [CarsList.listPanel, CarsList.detailPanel]
        });
    }
});


