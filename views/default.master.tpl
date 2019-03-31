<!DOCTYPE html>
<html lang="{$CurrentLocale.Lang}" class="sticky-footer-html">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:700,800" rel="stylesheet">
      
      <!-- GodotEngine.org header -->
    <div class="container flex align-center" id="GodotEngine_Header">
        <div id="nav_head">
            <a id="logo-link" href="//godotengine.org/">
                <img src="{"/themes/bootstrap/images/logo.svg"|asset_url:true:false}" alt="Godot Engine" height="48">
                <img src="{"/themes/bootstrap/images/logo_alt.svg"|asset_url:true:false}" alt="Godot Engine" height="48" id="alt">
            </a>
            
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar_godot_links" id="nav_toggle_btn">
                <img src="{"/themes/bootstrap/images/hamburger.svg"|asset_url:true:false}" alt="menu">
                <img src="{"/themes/bootstrap/images/hamburger_alt.svg"|asset_url:true:false}" alt="menu" id="alt">
            </button>
            
        </div>
        <nav class="navbar_godot_links collapse" id="nav_godot_links">
            <ul class="pull-left">
                <li><a href="//godotengine.org/features">Features</a></li>
                <li><a href="//godotengine.org/news">News</a></li>
                <li><a href="//godotengine.org/community">Community</a></li>
                <li><a href="//godotengine.org/more">More</a></li>
            </ul>
            <ul class="pull-right">
                <li><a href="//godotengine.org/download">Download</a></li>
                <li><a href="//docs.godotengine.org/">Learn</a></li>
                <li>
                    <a id="asset_lib" href="//godotengine.org/asset-library/asset">
                        <img src="{"/themes/bootstrap/images/asset_lib.svg"|asset_url:true:false}" alt="">
                    </a>
                    <a id="asset_lib_alt" href="//godotengine.org/asset-library/asset">
                        <img src="{"/themes/bootstrap/images/asset_lib_alt.svg"|asset_url:true:false}" alt="">
                    </a>
                </li>
            </ul>
        </nav>
    </div>
      
    {asset name="Head"}
  </head>
  <body id="{$BodyID}" class="{$BodyClass} sticky-footer-body">
    <nav class="navbar navbar-default navbar-static-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">{t c="Toggle navigation"}</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="{link path="home"}">{logo}</a>
        </div>

        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            {categories_link}
            {discussions_link}
            {activity_link}
            {custom_menu}
          </ul>
          {if $User.SignedIn}
            <ul class="nav navbar-nav navbar-right hidden-xs">
              {module name="MeModule"}
            </ul>
            <ul class="nav navbar-nav navbar-right visible-xs">
              {profile_link}
              {inbox_link}
              {bookmarks_link}
              {dashboard_link}
              {signinout_link}
            </ul>
          {else}
            <ul class="nav navbar-nav navbar-right">
              {signin_link}
            </ul>
          {/if}
        </div>
      </div>
    </nav>

    <section class="container">
      <div class="row">
          
		    <aside class="page-sidebar" role="complementary">
            {asset name="Panel"}

            <div class="Box Thirdparty-Embeds">
                <div style="padding-top: 18px"></div>
                <iframe class="discord" src="https://discordapp.com/widget?id=212250894228652034&theme=dark"></iframe>
                <center><a href="https://discord.gg/PWdeHDW"><i>Discord from old Godot Developers forums</i></a></center>
                <div style="padding-bottom: 18px"></div>
            </div>
          
        </aside>
		
		    <main class="page-content" role="main">
          {breadcrumbs}
          {if InSection(array("CategoryList", "CategoryDiscussionList", "DiscussionList"))}
            <div class="well search-form">{searchbox}</div>
          {/if}
          {asset name="Content"}
        </main> 
        
      </div>
    </section>

    <footer class="page-footer sticky-footer">
      <div class="container">
        <div class="clearfix">
            <div class="pull-left">
                <p>{t c="Copyright"} &copy; {$smarty.now|date_format:"%Y"} <a href="{link path="home"}">{logo}</a></p>
            </div>
        
            <div class="pull-right">
                <p>
                  Powered by <a href="{vanillaurl}">Vanilla Forums</a>.
                  <br />
                  <small>
                      Themes are <a href="https://github.com/TwistedTwigleg/vanilla-bootstrap"> modified versions </a> of the <a href="https://open.vanillaforums.com/addon/bootstrap-theme">Bootstrap theme</a> by <a href="https://open.vanillaforums.com/profile/Kasper">Kasper</a>.
                  </small>
                </p>
            </div>
          
        </div>
        {asset name="Foot"}
      </div>
    </footer>
    
    <div onclick="topFunction()" id="ReturnToTop" class="Button" title="Go to top">
    <i class="Arrow"></i>
    </div>
    
      {event name="AfterBody"}
  </body>
</html>
