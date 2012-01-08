// For masking of form fields at the end of the textfields.
// Cause: created by clearicons.
Ext.form.Field.override({
    onEnable: function() {
        if (this.clearIconContainerEl) {
            this.clearIconContainerEl.show();
        }

        this.fieldEl.dom.disabled = false;
    },

    onDisable : function() {
        if (this.clearIconContainerEl) {
            this.clearIconContainerEl.hide();
        }

        this.fieldEl.dom.disabled = true;
    }
});