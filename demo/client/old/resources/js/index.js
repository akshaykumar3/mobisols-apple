Ext.regModel('Cars', {
    fields: ['reg', 'state','type']
});

var carsList = new Ext.data.Store({
    model: 'Cars',
    sorters: 'reg',
    getGroupString : function(record) {
        return record.get('reg')[0];
    },
    data: [
    	    {reg: '4GPB522', state: 'CA',type:'Sedan'},
        {reg: '984TTR2', state: 'TX',type:'Trailer'},
        {reg: 'IZZONE', state: 'CA',type:'RV-2axle'},
        {reg: 'SHISM', state: 'CA',type:'Truck'}
      
    ]
});

Ext.regModel('PaidTolls', {
    fields: ['date', 'amount','location','reg']
});

var paidTolls = new Ext.data.Store({
    model: 'PaidTolls',
    sorters: 'reg',
    getGroupString : function(record) {
        return record.get('reg')[0];
    },
    data: [
    	    {date:'2011-01-01', amount:'$2.50', location:'I-15N, Escondido', reg: '4GPB522'},
    	    {date:'2011-01-15', amount:'$1.50', location:'76W, Long beach', reg: '4GPB522'},
    	    {date:'2011-01-18', amount:'$5.00', location:'I-95S, Stamford', reg: '984TTR2'},
    	    {date:'2011-02-12', amount:'$8.50', location:'George washington bridge, NY', reg: '984TTR2'},
    	    {date:'2011-02-28', amount:'$0.50', location:'1-15S, Escondido', reg: '4GPB522'},
    	    {date:'2011-03-11', amount:'$2.50', location:'1-15N, Escondido', reg: 'SHISM'}
       
      
    ]
});

Ext.setup({
    icon: 'icon.png',
    tabletStartupScreen: 'tablet_startup.png',
    phoneStartupScreen: 'phone_startup.png',
    glossOnIcon: false,
    onReady: function() {
        var tabpanel = new Ext.TabPanel({
            tabBar: {
                dock: 'bottom',
                layout: {
                    pack: 'center'
                }
            },
            defaultActiveTab: 'home',
            fullscreen: true,
            ui: 'light',
            cardSwitchAnimation: {
                type: 'slide',
                cover: true
            },
            
            defaults: {
                scroll: 'vertical'
            },
            items: [{
        title: 'Home',
        xtype: 'form',
        id: 'home',
        scroll: 'vertical',
        iconCls: 'home',
        
        cls: 'card1',
        items: [{
                xtype: 'togglefield',
                name: 'enable',
                label: 'Global toll pass - enable'
            },
        	
        	{
            xtype: 'fieldset',
            title: 'Toll operator',
            instructions: 'Please enter the information above.',
            defaults: {
                // labelAlign: 'right'
                labelWidth: '35%'
            },
            items: [{
                xtype: 'textfield',
                name: 'currloc',
                label: 'Current location',
                placeHolder: 'San Diego, CA',
                autoCapitalize : true,
                required: true,
                useClearIcon: true
            },
            {
                xtype: 'textfield',
                name: 'userid',
                label: 'UserID',
                placeHolder: 'userID',
                autoCapitalize : false,
                required: true,
                useClearIcon: true
            }
            , {
                xtype: 'passwordfield',
                name: 'password',
                label: 'Password',
                useClearIcon: true
            } ]},
            {
            xtype: 'fieldset',
            title: 'Payment info',
            instructions: 'Please enter the information above.',
            defaults: {
                // labelAlign: 'right'
                labelWidth: '35%'
            },
            items: [{
            
                xtype: 'emailfield',
                name: 'email',
                label: 'Email',
                placeHolder: 'me@sencha.com',
                useClearIcon: true
            },  {
                xtype: 'checkboxfield',
                name: 'autopay',
                label: 'Auto-pay'
            },{
                xtype: 'textfield',
                name: 'ccnumber',
                label: 'Credit card#',
                placeHolder: 'XXXX-XXXX-XXXX-XXXX',
                useClearIcon: true
            }
            , {
                xtype: 'datepickerfield',
                name: 'expirydate',
                label: 'Expiry date',
                picker: { yearFrom: 2011 }
            }, {
                xtype: 'selectfield',
                name: 'cardtype',
                label: 'Credit card type',
                options: [{
                    text: 'Visa',
                    value: 'visa'
                },
                {
                    text: 'Master',
                    value: 'master'
                },{
                    text: 'American Express',
                    value: 'amex'
                }, {
                    text: 'Discover',
                    value: 'discover'
                }]
            }, {
                xtype: 'hiddenfield',
                name: 'secret',
                value: false
            }, {
                xtype: 'textareafield',
                name: 'billingadd',
                label: 'Billing address'
            }]
        }, {
            layout: 'vbox',
            defaults: {xtype: 'button', flex: 1, style: 'margin: .5em;'},
            items: [{
                text: 'Disable fields',
                scope: this,
                hasDisabled: false,
                handler: function(btn){
                    var form = Ext.getCmp('basicform');

                    if (btn.hasDisabled) {
                        form.enable();
                        btn.hasDisabled = false;
                        btn.setText('Disable fields');                      
                    } else {
                        form.disable();
                        btn.hasDisabled = true;
                        btn.setText('Enable fields');
                    }
                }
            }, {
                text: 'Reset form',
                handler: function(){
                    Ext.getCmp('basicform').reset();
                }
            }]
        }]
    }, {
        title: 'My cars',
        iconCls: 'favorites',
        badgeText:'4',
        activeItem: '1',
        layout: Ext.is.Phone ? 'fit' : {
            type: 'vbox',
            align: 'center',
            pack: 'center'
        },
        cls: 'card2',
        items: [{
            width: Ext.is.Phone ? undefined : 300,
            height: 500,
            xtype: 'list',
            store: carsList,
            itemTpl: '<div class="contact"><strong>{reg}</strong>  - {state} - {type}</div>'
        }]
    }, {
        title: 'Paid tolls',
        iconCls: 'downloads',
        badgeText:'4',
        layout: Ext.is.Phone ? 'fit' : {
            type: 'vbox',
            align: 'center',
            pack: 'center'
        },
        cls: 'demo-list',
        items: [{
            width: Ext.is.Phone ? undefined : 300,
            height: 500,
            xtype: 'list',
            store: paidTolls,
            itemTpl: '<div class="contact">{amount} on <strong>{date}</strong> @ {location} - {reg}</div>' 
        }]
    }, {
        title: 'Settings',
        xtype: 'form',
        id: 'basicform',
        scroll: 'vertical',
        iconCls: 'settings',
        cls: 'card4',
        items: [{
            xtype: 'fieldset',
            title: 'Account info',
            instructions: 'Please enter the information above.',
            defaults: {
                // labelAlign: 'right'
                labelWidth: '35%'
            },
            items: [{
                xtype: 'textfield',
                name: 'name',
                label: 'Name',
                placeHolder: 'Tom Roy',
                autoCapitalize : true,
                required: true,
                useClearIcon: true
            },
            {
                xtype: 'textfield',
                name: 'userid',
                label: 'UserID',
                placeHolder: 'userID',
                autoCapitalize : false,
                required: true,
                useClearIcon: true
            }
            , {
                xtype: 'passwordfield',
                name: 'password',
                label: 'Password',
                useClearIcon: true
            } ]},
            {
            xtype: 'fieldset',
            title: 'Payment info',
            instructions: 'Please enter the information above.',
            defaults: {
                // labelAlign: 'right'
                labelWidth: '35%'
            },
            items: [{
            
                xtype: 'emailfield',
                name: 'email',
                label: 'Email',
                placeHolder: 'me@sencha.com',
                useClearIcon: true
            },  {
                xtype: 'checkboxfield',
                name: 'autopay',
                label: 'Auto-pay'
            },{
                xtype: 'textfield',
                name: 'ccnumber',
                label: 'Credit card#',
                placeHolder: 'XXXX-XXXX-XXXX-XXXX',
                useClearIcon: true
            }
            , {
                xtype: 'datepickerfield',
                name: 'expirydate',
                label: 'Expiry date',
                picker: { yearFrom: 2011 }
            }, {
                xtype: 'selectfield',
                name: 'cardtype',
                label: 'Credit card type',
                options: [{
                    text: 'Visa',
                    value: 'visa'
                },
                {
                    text: 'Master',
                    value: 'master'
                },{
                    text: 'American Express',
                    value: 'amex'
                }, {
                    text: 'Discover',
                    value: 'discover'
                }]
            }, {
                xtype: 'hiddenfield',
                name: 'secret',
                value: false
            }, {
                xtype: 'textareafield',
                name: 'billingadd',
                label: 'Billing address'
            }]
        }, {
            layout: 'vbox',
            defaults: {xtype: 'button', flex: 1, style: 'margin: .5em;'},
            items: [{
                text: 'Disable fields',
                scope: this,
                hasDisabled: false,
                handler: function(btn){
                    var form = Ext.getCmp('basicform');

                    if (btn.hasDisabled) {
                        form.enable();
                        btn.hasDisabled = false;
                        btn.setText('Disable fields');                      
                    } else {
                        form.disable();
                        btn.hasDisabled = true;
                        btn.setText('Enable fields');
                    }
                }
            }, {
                text: 'Reset form',
                handler: function(){
                    Ext.getCmp('basicform').reset();
                }
            }]
        }]
    }, {
                title: 'Map',
                xtype: 'map',
                useCurrentLocation: true,
                cls: 'card5',
                iconCls: 'locate'
            }]
        });
    
    }
});