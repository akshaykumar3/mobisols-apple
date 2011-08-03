Ext.setup({
	onReady: function(){
		console.log('Page is setup');
	    var list = new Ext.List({ 
            fullscreen: true, 
            itemTpl : '{User}', 
            indexBar: true, 
            styleHtmlContent: true, 
            store: userStore, 
        }); 
        
        console.log(userStore);
		
	}
});
