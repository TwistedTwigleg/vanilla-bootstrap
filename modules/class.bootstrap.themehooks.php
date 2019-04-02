<?php if (!defined('APPLICATION')) exit();

class bootstrapThemeHooks extends Gdn_Plugin {

    public function base_render_before($sender) {

        if (InSection("Dashboard"))
            return;

        $sender->addJsFile('themeFunctions.js');
    }
    
    
    // When in the discussions view...
    public function discussionsController_render_before($sender, $args)
    {
        $sender->addJsFile('themeFunctionsDiscussions.js');
    }

}