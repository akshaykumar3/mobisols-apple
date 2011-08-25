gtp.views.Home=Ext.extend(Ext.Panel,{
	layout: 'card',
	initComponent: function(){
		this.homepanel=new Ext.Panel({
			layout: 'fit',
			xtype: 'formpanel',
			dockedItems: [{
				xtype: 'toolbar',
				dock: 'top',
				title: 'Mobile Toll Pass',
				layout: {
					pack: 'left'
				},
				items: [{
					iconMask: true,
					ui: 'plain',
					iconCls: 'SunPassLogo'
				},{
					xtype: 'spacer'
				},{
					text: 'help',
					ui: 'green'
				}]
			}],
			items: [{
				
			}]
		});
	}
});

Ext.reg('home', gtp.views.Home);

				xtype: 'formpanel',
				id: 'home',
				scroll: 'vertical',
				iconCls: 'home',
				cls: 'card1',
				dockedItems: [{
					xtype: 'toolbar',
					dock: 'top',
					title: 'Mobile Toll Pass',
					layout: {
						pack: 'left'
					},
					items: [{
						iconMask: true,
						ui: 'plain',
						iconCls: 'SunPassLogo'
					},{
						xtype: 'spacer'
					},{
						text: 'help',
						ui: 'green'
					}]
				}],
				items: [{
					xtype: 'togglefield',
					id: 'tfd',
					animationDuration: 200,
					//value: 0,
					name: 'enable',
					label: 'Enable',
					listeners: {
						el: {
							click: function() {
								console.log(Ext.getCmp('tfd').value);
								var toggle=Ext.getCmp('tfd');
								var cl=Ext.getCmp('curloc');
								var to=Ext.getCmp('operator');
								var at=Ext.getCmp('avgtoll');
								var pt=Ext.getCmp('pdtoll');
								if(toggle.value==0) {
									console.log(this);
									console.log(Ext.getCmp('tfd'));
									gtp.isAppEnabled=1;
									console.log('toggled');
									toggle.value=1;
									var clat,clong;
									if(gtp.geo.latitude || gtp.geo.longitude){
										clat=gtp.geo.latitude;
										clong=gtp.geo.longitude;
									}
									else{
										clat=37.1345;
										clong=-130.121;
									}
									/*Ext.Ajax.request({
										url: 'http://mbtest.dyndns.dk:6004/webservices/services/GetLocation',
										params: {
											json: Ext.encode({
												latitude: clat,
												longitude: clong
											})
										},
										success: function(response){
											console.log(response.responseText);
											var resobj=Ext.decode(response.responseText);
											console.log(resobj);
											cl.setValue(resobj.response.city + resobj.response.state);
											to.setValue(resobj.response.tolloperator);
											at.setValue(resobj.response.avgtoll);
											pt.setValue(resobj.response.price);
										},
										failure: function(response){
											console.log('failure with status'+response.status);
											cl.setValue('Tallahassee, Florida');
											to.setValue(TollsData.getAt(0).get('tolloperator'));
											at.setValue(TollsData.getAt(0).get('avgtoll'));
											pt.setValue(TollsData.getAt(0).get('tollperday'));
										}
									})*/
									
									if(Ext.getCmp('activecar').getValue())
									{
										cl.setValue('Tallahassee, Florida');
										to.setValue(TollsData.getAt(0).get('tolloperator'));
										at.setValue(TollsData.getAt(0).get('avgtoll'));
										pt.setValue(TollsData.getAt(0).get('tollperday'));
										console.log('before heartbeat request');
										setTimeout("requestHeartBeat()",5000);
										console.log('after heartbeat request');
										
										message='Settings are saved, Car '+Ext.getCmp('activecar').getValue()+' is active';
										console.log(message);
										Ext.Msg.alert('Activated',message);
										Ext.getCmp('activecar').disabled=true;
									}
									else
									{
										Ext.Msg.alert('Car should be selected');
									}
								} else {
									gtp.isAppEnabled=0;
									console.log(toggle.value);
									cl.setValue("");
									to.setValue("");
									at.setValue("");
									pt.setValue("");
									toggle.value=0;
									Ext.getCmp('activecar').disabled=false;
								}
							}
						},
						scope: this
					}
				},{
					xtype: 'fieldset',
					title: 'Car & Service',
					id: 'fset',
					defaults: {
						// labelAlign: 'right'
						labelWidth: '35%'
					},
					items: [{
						xtype: 'textfield',
						id: 'curloc',
						label: 'CurLoc',
						disabled: true,
						autoCapitalize : true,
						useClearIcon: true
					},{
						xtype: 'textfield',
						disabled: true,
						id: 'operator',
						label: 'Operator'
					},{
						xtype: 'textfield',
						disabled: true,
						id: 'avgtoll',
						label: 'AvgToll'
					},{
						xtype: 'textfield',
						disabled: true,
						id: 'pdtoll',
						label: 'Per Day'
					},{
						xtype: 'selectfield',
						//disabled: true,
						label: 'ActiveCar',
						id: 'activecar',
						options: [{
							text: '4GPB5',
							value: '4GPB5'
						}]
					},{
						xtype: 'selectfield',
						name: 'service',
						label: 'Service',
						required: true,
						options: [{
							text: 'daily',
							value: 'daily'
						},{
							text: 'weekly',
							value: 'weekly'
						},{
							text: 'monthly',
							value: 'monthly'
						}]
					}]
				}]
			}