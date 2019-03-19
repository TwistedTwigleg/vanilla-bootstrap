<?php if (!defined('APPLICATION')) exit();

class bootstrapThemeHooks extends Gdn_Plugin {

    public function base_render_before($sender) {

        if (InSection("Dashboard"))
            return;

        $sender->addJsFile('themeFunctions.js');
    }

}