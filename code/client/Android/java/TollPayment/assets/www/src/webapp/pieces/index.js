CarsList = new Ext.Application({
    name: "CarsList",

    launch: function() {
		vehicleInfo = new Ext.Template(
			'State <input type="text" value={state} name="st" readonly=readonly />',
			'<br/>RegNo <input type="text" value={reg} name="rg" readonly=readonly />',
			'<br/>Type <input type="text" value={cartype} name="ct" readonly=readonly />',
			'<br/>Start Date <input type="date" value={startDate} />',
			'<br/>End Date <input type="date" value={endDate} />'
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
							id: 'tf',
							value: stateTpl
						},
						{
							xtype: 'textfield',
							label: 'Reg',
							name: 'rgt',
							placeHolder: 'reg'
						},
						{
							xtype: 'textfield',
							label: 'Type',
							name: 'tp'
						}
					]
				},
				{
					xtype: 'fieldset',
					title: 'SuggestSomeName',
					dock: 'bottom',
					items: [
						{
							xtype: 'datepickerfield',
							label: 'Start Date',
							name: 'sd'
						},
						{
							xtype: 'datepickerfield',
							label: 'End Date',
							name: 'ed'
						}
					]
				},
                {
                    xtype: 'toolbar',
					dock: 'bottom',
					title: 'View Car',
                    items: [
						{
							text: 'Back',
							ui: 'back',
							handler: function() {
								CarsList.Viewport.setActiveItem('disclosurelist', {type:'slide', direction:'right'});
								CarsList.detailPanel.update(tf);
							}
						},
						{xtype: 'spacer'},
						{
							text: 'Edit',
							ui: 'action',
							listeners: {
								'tap': function(){
								}
							}
						}
                    ]
                }
				/*{	
						xtype: 'button',
						dock: 'bottom',
						text: 'edit',
						ui: 'normal',
						width: '100px'
				}*/
            ]
        });

        CarsList.listPanel = new Ext.List({
            id: 'disclosurelist',
            store: CarsList.ListStore,
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


