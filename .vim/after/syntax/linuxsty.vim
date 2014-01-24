




<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>kernel-coding-style/plugin/linuxsty.vim at master · bhilburn/kernel-coding-style</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="fb:app_id" content="1401488693436528"/>
    <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://1.gravatar.com/avatar/92a64c9b9f422aaa2ca968bf36b233b7?d=https%3A%2F%2Fidenticons.github.com%2Faf400ed1afe984ddd49f842598deb631.png&amp;r=x&amp;s=400" property="og:image" /><meta content="kernel-coding-style" property="og:title" /><meta content="https://github.com/bhilburn/kernel-coding-style" property="og:url" /><meta content="kernel-coding-style - Vim plugin to respect the Linux kernel coding style http://www.vim.org/scripts/script.php?script_id=4369" property="og:description" />

    <meta name="hostname" content="github-fe130-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 2.1.0p0-github-tcmalloc (60139581e1) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="DA119E30:60EF:4BD29D5:52E1FF9A" name="octolytics-dimension-request_id" /><meta content="4385445" name="octolytics-actor-id" /><meta content="jerrylins" name="octolytics-actor-login" /><meta content="528e9f513a1b145cd6e08d072d08b8244cf86a5e20f731c1577c4c4078931f83" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="rJm9ypC13xcDPfvXfWFD4kDripjug70/INUy+58/pfs=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-301dbd4baf337674d6b22b9e8b3b3f8f6c24a4e4.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-8babaddc50ef8141ad5f6ad5119606bbfc694117.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://github.global.ssl.fastly.net/assets/frameworks-5f8ce86d14546e9abd0ba5b2f8d52ebf83922ca5.js" type="text/javascript"></script>
      <script async="async" defer="defer" src="https://github.global.ssl.fastly.net/assets/github-0b6b655bf6765267e3761e7eb48c2916077ded52.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="1d1621c6c706e2521663745258f92096">

        <link data-pjax-transient rel='permalink' href='/bhilburn/kernel-coding-style/blob/1b0d1117e7f0463b5a8b05e007715e2cdb94596f/plugin/linuxsty.vim'>

  <meta name="description" content="kernel-coding-style - Vim plugin to respect the Linux kernel coding style http://www.vim.org/scripts/script.php?script_id=4369" />

  <meta content="569571" name="octolytics-dimension-user_id" /><meta content="bhilburn" name="octolytics-dimension-user_login" /><meta content="9991930" name="octolytics-dimension-repository_id" /><meta content="bhilburn/kernel-coding-style" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="true" name="octolytics-dimension-repository_is_fork" /><meta content="3160167" name="octolytics-dimension-repository_parent_id" /><meta content="vivien/vim-addon-linux-coding-style" name="octolytics-dimension-repository_parent_nwo" /><meta content="3160167" name="octolytics-dimension-repository_network_root_id" /><meta content="vivien/vim-addon-linux-coding-style" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/bhilburn/kernel-coding-style/commits/master.atom" rel="alternate" title="Recent Commits to kernel-coding-style:master" type="application/atom+xml" />

  </head>


  <body class="logged_in  env-production linux vis-public fork page-blob">
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    
    <a href="/notifications" class="notification-indicator tooltipped downwards" data-gotokey="n" title="You have no unread notifications">
        <span class="mail-status all-read"></span>
</a>

      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="jerrylins"
      data-repo="bhilburn/kernel-coding-style"
      data-branch="master"
      data-sha="0d39891576dbace3b0f1545185b1877d4d2bdb62"
  >

    <input type="hidden" name="nwo" value="bhilburn/kernel-coding-style" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/jerrylins" class="name">
        <img height="20" src="https://0.gravatar.com/avatar/b8c462c43f00805060f5f0f8665e5047?d=https%3A%2F%2Fidenticons.github.com%2F6551e3af9775a9354f226edc4e54c71f.png&amp;r=x&amp;s=140" width="20" /> jerrylins
      </a>
    </li>

      <li class="new-menu dropdown-toggle js-menu-container">
        <a href="#" class="js-menu-target tooltipped downwards" title="Create new…">
          <span class="octicon octicon-plus"></span>
          <span class="dropdown-arrow"></span>
        </a>

        <div class="js-menu-content">
        </div>
      </li>

      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          aria-label="Account settings "
          title="Account settings ">
          <span class="octicon octicon-tools"></span>
        </a>
      </li>
      <li>
        <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out" aria-label="Sign out">
          <span class="octicon octicon-log-out"></span>
        </a>
      </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>



</ul>

</div>


    
  </div>
</div>

      

      




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="rJm9ypC13xcDPfvXfWFD4kDripjug70/INUy+58/pfs=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="9991930" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/bhilburn/kernel-coding-style/watchers">
        1
      </a>
      <span class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0">
        <span class="js-select-button">
          <span class="octicon octicon-eye-watch"></span>
          Watch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for conversations in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  

  <div class="js-toggler-container js-social-container starring-container ">
    <a href="/bhilburn/kernel-coding-style/unstar"
      class="minibutton with-count js-toggler-target star-button starred upwards"
      title="Unstar this repository" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
    </a>

    <a href="/bhilburn/kernel-coding-style/star"
      class="minibutton with-count js-toggler-target star-button unstarred upwards"
      title="Star this repository" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star"></span><span class="text">Star</span>
    </a>

      <a class="social-count js-social-count" href="/bhilburn/kernel-coding-style/stargazers">
        0
      </a>
  </div>

  </li>


        <li>
          <a href="/bhilburn/kernel-coding-style/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="nofollow" data-method="post">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/bhilburn/kernel-coding-style/network" class="social-count">4</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo-forked"></span>
          <span class="author">
            <a href="/bhilburn" class="url fn" itemprop="url" rel="author"><span itemprop="title">bhilburn</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/bhilburn/kernel-coding-style" class="js-current-repository js-repo-home-link">kernel-coding-style</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

            <span class="fork-flag">
              <span class="text">forked from <a href="/vivien/vim-addon-linux-coding-style">vivien/vim-addon-linux-coding-style</a></span>
            </span>
        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      

      <div class="repository-with-sidebar repo-container  ">

        <div class="repository-sidebar">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped leftwards" title="Code">
        <a href="/bhilburn/kernel-coding-style" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /bhilburn/kernel-coding-style">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


      <li class="tooltipped leftwards" title="Pull Requests">
        <a href="/bhilburn/kernel-coding-style/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /bhilburn/kernel-coding-style/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/bhilburn/kernel-coding-style/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_wiki /bhilburn/kernel-coding-style/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/bhilburn/kernel-coding-style/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /bhilburn/kernel-coding-style/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/bhilburn/kernel-coding-style/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /bhilburn/kernel-coding-style/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/bhilburn/kernel-coding-style/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /bhilburn/kernel-coding-style/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/bhilburn/kernel-coding-style.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/bhilburn/kernel-coding-style.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:bhilburn/kernel-coding-style.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:bhilburn/kernel-coding-style.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/bhilburn/kernel-coding-style" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/bhilburn/kernel-coding-style" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" title="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>



                <a href="/bhilburn/kernel-coding-style/archive/master.zip"
                   class="minibutton sidebar-button"
                   title="Download this repository as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:50b5ae1d687eb0a646390119d0a8c01a -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/bhilburn/kernel-coding-style/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bhilburn/kernel-coding-style/blob/autoload_plugin/plugin/linuxsty.vim"
                 data-name="autoload_plugin"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="autoload_plugin">autoload_plugin</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bhilburn/kernel-coding-style/blob/master/plugin/linuxsty.vim"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bhilburn/kernel-coding-style/tree/v0.2/plugin/linuxsty.vim"
                 data-name="v0.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="v0.2">v0.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bhilburn/kernel-coding-style/tree/v0.1/plugin/linuxsty.vim"
                 data-name="v0.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="v0.1">v0.1</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/bhilburn/kernel-coding-style" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">kernel-coding-style</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/bhilburn/kernel-coding-style/tree/master/plugin" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">plugin</span></a></span><span class="separator"> / </span><strong class="final-path">linuxsty.vim</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="plugin/linuxsty.vim" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>



  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://0.gravatar.com/avatar/92a64c9b9f422aaa2ca968bf36b233b7?d=https%3A%2F%2Fidenticons.github.com%2Faf400ed1afe984ddd49f842598deb631.png&amp;r=x&amp;s=140" width="24" />
    <span class="author"><a href="/bhilburn" rel="author">bhilburn</a></span>
    <time class="js-relative-date" datetime="2013-05-12T17:41:50-07:00" title="2013-05-12 17:41:50">May 12, 2013</time>
    <div class="commit-title">
        <a href="/bhilburn/kernel-coding-style/commit/90f1bd49d66c4e9def0d23aa60555c21a9da96c9" class="message" data-pjax="true" title="triggering a filetype re-detection to load formatting properly">triggering a filetype re-detection to load formatting properly</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>2</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="vivien" href="/bhilburn/kernel-coding-style/commits/master/plugin/linuxsty.vim?author=vivien"><img height="20" src="https://1.gravatar.com/avatar/6e36a31a1dc5d87c1bf028e5b3816dbe?d=https%3A%2F%2Fidenticons.github.com%2Fe35d512de4ce57d8a7e99a3ceb119f74.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="bhilburn" href="/bhilburn/kernel-coding-style/commits/master/plugin/linuxsty.vim?author=bhilburn"><img height="20" src="https://0.gravatar.com/avatar/92a64c9b9f422aaa2ca968bf36b233b7?d=https%3A%2F%2Fidenticons.github.com%2Faf400ed1afe984ddd49f842598deb631.png&amp;r=x&amp;s=140" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img height="24" src="https://1.gravatar.com/avatar/6e36a31a1dc5d87c1bf028e5b3816dbe?d=https%3A%2F%2Fidenticons.github.com%2Fe35d512de4ce57d8a7e99a3ceb119f74.png&amp;r=x&amp;s=140" width="24" />
            <a href="/vivien">vivien</a>
          </li>
          <li class="facebox-user-list-item">
            <img height="24" src="https://0.gravatar.com/avatar/92a64c9b9f422aaa2ca968bf36b233b7?d=https%3A%2F%2Fidenticons.github.com%2Faf400ed1afe984ddd49f842598deb631.png&amp;r=x&amp;s=140" width="24" />
            <a href="/bhilburn">bhilburn</a>
          </li>
      </ul>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>55 lines (42 sloc)</span>
        <span>1.521 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
                <a class="minibutton tooltipped upwards"
                   title="Clicking this button will automatically fork this project so you can edit the file"
                   href="/bhilburn/kernel-coding-style/edit/master/plugin/linuxsty.vim"
                   data-method="post" rel="nofollow">Edit</a>
          <a href="/bhilburn/kernel-coding-style/raw/master/plugin/linuxsty.vim" class="button minibutton " id="raw-url">Raw</a>
            <a href="/bhilburn/kernel-coding-style/blame/master/plugin/linuxsty.vim" class="button minibutton ">Blame</a>
          <a href="/bhilburn/kernel-coding-style/commits/master/plugin/linuxsty.vim" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger empty-icon tooltipped downwards"
             href="/bhilburn/kernel-coding-style/delete/master/plugin/linuxsty.vim"
             title="Fork this project and delete file"
             data-method="post" data-test-id="delete-blob-file" rel="nofollow">
          Delete
        </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-viml js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>

            </td>
            <td class="blob-line-code">
                    <div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c">&quot; Vim plugin to fit the Linux kernel coding style and help kernel development</span></div><div class='line' id='LC2'><span class="c">&quot; Last Change:  2013 May 10</span></div><div class='line' id='LC3'><span class="c">&quot; Maintainer:   Vivien Didelot &lt;vivien.didelot@savoirfairelinux.com&gt;</span></div><div class='line' id='LC4'><span class="c">&quot; License:      Distributed under the same terms as Vim itself.</span></div><div class='line' id='LC5'><span class="c">&quot;</span></div><div class='line' id='LC6'><span class="c">&quot; This script is inspired from an article written by Bart:</span></div><div class='line' id='LC7'><span class="c">&quot; http://www.jukie.net/bart/blog/vim-and-linux-coding-style</span></div><div class='line' id='LC8'><span class="c">&quot; and various user comments.</span></div><div class='line' id='LC9'><br/></div><div class='line' id='LC10'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;g:loaded_linuxsty&quot;</span><span class="p">)</span></div><div class='line' id='LC11'>    <span class="k">finish</span></div><div class='line' id='LC12'><span class="k">endif</span></div><div class='line' id='LC13'><span class="k">let</span> <span class="k">g</span>:loaded_linuxsty <span class="p">=</span> <span class="m">1</span></div><div class='line' id='LC14'><br/></div><div class='line' id='LC15'><span class="k">function</span><span class="p">!</span> SetLinuxFormatting<span class="p">()</span></div><div class='line' id='LC16'>&nbsp;&nbsp;&nbsp;&nbsp;autocmd<span class="p">!</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'>&nbsp;&nbsp;&nbsp;&nbsp;autocmd <span class="nb">FileType</span> <span class="k">c</span><span class="p">,</span>cpp <span class="k">call</span> <span class="k">s</span>:LinuxSettings<span class="p">()</span></div><div class='line' id='LC19'>&nbsp;&nbsp;&nbsp;&nbsp;autocmd <span class="nb">FileType</span> <span class="k">c</span><span class="p">,</span>cpp <span class="k">call</span> <span class="k">s</span>:LinuxKeywords<span class="p">()</span></div><div class='line' id='LC20'>&nbsp;&nbsp;&nbsp;&nbsp;autocmd <span class="nb">FileType</span> <span class="k">c</span><span class="p">,</span>cpp <span class="k">call</span> <span class="k">s</span>:LinuxHighlighting<span class="p">()</span></div><div class='line' id='LC21'>&nbsp;&nbsp;&nbsp;&nbsp;autocmd <span class="nb">FileType</span> <span class="nb">diff</span><span class="p">,</span>kconfig</div><div class='line' id='LC22'><br/></div><div class='line' id='LC23'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">filetype</span> detect</div><div class='line' id='LC24'>endfunc</div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'>command<span class="p">!</span> SetLinuxFormatting <span class="k">call</span> SetLinuxFormatting<span class="p">()</span></div><div class='line' id='LC27'><br/></div><div class='line' id='LC28'><span class="k">function</span> <span class="k">s</span>:LinuxSettings<span class="p">()</span></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">setlocal</span> <span class="nb">tabstop</span><span class="p">=</span><span class="m">8</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">setlocal</span> <span class="nb">shiftwidth</span><span class="p">=</span><span class="m">8</span></div><div class='line' id='LC31'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">setlocal</span> <span class="nb">textwidth</span><span class="p">=</span><span class="m">80</span></div><div class='line' id='LC32'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">setlocal</span> <span class="nb">noexpandtab</span></div><div class='line' id='LC33'><br/></div><div class='line' id='LC34'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">setlocal</span> <span class="nb">cindent</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">setlocal</span> <span class="nb">formatoptions</span><span class="p">=</span>tcqlron</div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">setlocal</span> <span class="nb">cinoptions</span><span class="p">=</span>:<span class="m">0</span><span class="p">,</span>l1<span class="p">,</span>t0<span class="p">,</span>g0</div><div class='line' id='LC37'><br/></div><div class='line' id='LC38'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">setlocal</span> <span class="nb">wildignore</span><span class="p">+=</span>*.ko<span class="p">,</span>*.<span class="k">mod</span>.<span class="k">c</span><span class="p">,</span>*.order<span class="p">,</span>modules.builtin</div><div class='line' id='LC39'><span class="k">endfunction</span></div><div class='line' id='LC40'><br/></div><div class='line' id='LC41'><span class="k">function</span> <span class="k">s</span>:LinuxKeywords<span class="p">()</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">syn</span> keyword cOperator likely unlikely</div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">syn</span> keyword cType u8 u16 u32 u64 s8 s16 s32 s64</div><div class='line' id='LC44'><span class="k">endfunction</span></div><div class='line' id='LC45'><br/></div><div class='line' id='LC46'><span class="k">function</span> <span class="k">s</span>:LinuxHighlighting<span class="p">()</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">highlight</span> default link LinuxError ErrorMsg</div><div class='line' id='LC48'><br/></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">syn</span> <span class="k">match</span> LinuxError <span class="sr">/ \+\ze\t/</span>     <span class="c">&quot; spaces before tab</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">syn</span> <span class="k">match</span> LinuxError <span class="sr">/\s\+$/</span>        <span class="c">&quot; trailing whitespaces</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">syn</span> <span class="k">match</span> LinuxError <span class="sr">/\%81v.\+/</span>     <span class="c">&quot; virtual column 81 and more</span></div><div class='line' id='LC52'><span class="k">endfunction</span></div><div class='line' id='LC53'><br/></div><div class='line' id='LC54'><span class="c">&quot; vim: ts=4 et sw=4</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.03999s from github-fe130-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/bhilburn/kernel-coding-style/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close js-ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>
