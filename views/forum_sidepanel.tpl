<!-- The side panel for the forum. -->
{if InSection(array("CategoryList", "CategoryDiscussionList", "DiscussionList", "Discussion"))}
    {module name="NewDiscussionModule"}
{/if}

{if InSection(array("CategoryList", "CategoryDiscussionList", "DiscussionList", "Discussion", "Profile", "Conversations"))}
    {module name="DiscussionFilterModule"}
{/if}

{if InSection(array("ActivityList"))}
    {module name="ActivityFilterModule"}
{/if}

{if InSection(array("CategoryDiscussionList", "DiscussionList", "Discussion", "Profile", "Conversations"))}
    <button type="button" class="sidebar-toggle" data-toggle="collapse" data-target=".sidebar-categories-collapse">
        Categories
    </button>
    <div class="sidebar-categories-collapse collapse">
        {module name="CategoriesModule"}
    </div>
{/if}

{if InSection(array("CategoryList", "CategoryDiscussionList", "DiscussionList", "Profile", "Conversations"))}
    <button type="button" class="sidebar-toggle" data-toggle="collapse" data-target=".sidebar-tags-collapse">
        Tags
    </button>
    <div class="sidebar-tags-collapse collapse">
        {module name="TagModule"}
    </div>
{/if}