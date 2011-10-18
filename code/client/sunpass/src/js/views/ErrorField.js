gtp.views.ErrorField = Ext.extend(Ext.Component, {

    initComponent: function() {
        config = {
            xtype: 'component',
            id: this.fieldname + 'ErrorField',
            cls: 'errorfield',
            tpl: [
                '<tpl if="values.length &gt; 0">',
                '    <ul>',
                '        <tpl for=".">',
                '            <li>{field} {message}</li>',
                '        </tpl>',
                '    </ul>',
                '</tpl>'
            ],
            hidden: true
        };

        Ext.apply(this, config);
        gtp.views.ErrorField.superclass.initComponent.call(this);
    }
});
Ext.reg('gtp.views.ErrorField', gtp.views.ErrorField);