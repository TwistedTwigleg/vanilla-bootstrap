<?php if (!defined('APPLICATION')) exit();

class bootstrapThemeHooks extends Gdn_Plugin {

    // This was missing from the setup to properly set the mobile theme
    public function setup() {
        saveToConfig([ 'Garden.MobileTheme' => 'bootstrap' ]);
    }
    
    public function base_render_before($sender) {

        if (InSection("Dashboard"))
            return;

        $sender->addJsFile('themeFunctions.js');
    }
}