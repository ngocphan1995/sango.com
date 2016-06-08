<!-- BEGIN: submenu -->
<ul class="dropdown-menu">
    <!-- BEGIN: loop -->
    <li <!-- BEGIN: submenu -->class="dropdown-submenu"<!-- END: submenu -->>
        <!-- BEGIN: icon -->
        <img src="{SUBMENU.icon}" />&nbsp;
        <!-- END: icon -->
        <a href="{SUBMENU.link}" title="{SUBMENU.note}" {SUBMENU.target}>{SUBMENU.title_trim}</a>
        <!-- BEGIN: item -->
        {SUB}
        <!-- END: item -->
    </li>
    <!-- END: loop -->
</ul>
<!-- END: submenu -->

<!-- BEGIN: main -->
<style>
    .dropdown-toggle {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: translateZ(0);
        transform: translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        -moz-osx-font-smoothing: grayscale;
        position: relative;
        -webkit-transition-property: color;
        transition-property: color;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.4s;
    }
    .dropdown-toggle:before {
        content: "";
        height: 3px;
        // width: 3px;
        position: absolute;
        z-index: -1;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: #333;
        -webkit-transform: scaleX(0);
        transform: scaleX(0);
        -webkit-transform-origin: 0 50%;
        transform-origin: 0 50%;
        -webkit-transition-property: transform;
        transition-property: transform;
        -webkit-transition-duration: 0.5s;
        transition-duration: 0.5s;
        -webkit-transition-timing-function: ease-out;
        transition-timing-function: ease-out;
    }
    .dropdown-toggle:hover {
        color: white;
    }
    .dropdown-toggle:hover:before {
        -webkit-transform: scaleX(1);
        transform: scaleX(1);
    }
    .form-control {
        display: block;
        width: 100%;
        height: 45px;
        padding: 6px 12px;
        font-size: 13px;
        line-height: 1.42857143;
        color: #555555;
        background-color: #ffffff;
        background-image: none;
        border: 1px solid #cccccc;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
        -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    }
    .input-group-btn:last-child > .btn, .input-group-btn:last-child > .btn-group {
        height: 45px;
    }
</style>
<div class="navbar navbar-default navbar-static-top radius-top-left radius-top-right" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu-site-default">
            <span class="sr-only">&nbsp;</span>
            <span class="icon-bar">&nbsp;</span>
            <span class="icon-bar">&nbsp;</span>
            <span class="icon-bar">&nbsp;</span>
        </button>
    </div>
    <div class="collapse navbar-collapse" id="menu-site-default">
        <ul class="nav navbar-nav">
            <!--<li>
                    <a class="home" title="{LANG.Home}" href="{THEME_SITE_HREF}"><em class="fa fa-lg fa-home">&nbsp;</em><span class="visible-xs-inline-block"> {LANG.Home}</span></a>
            </li>-->
            <!-- BEGIN: top_menu -->
            <li {TOP_MENU.current} rol="presentation">
                <!-- BEGIN: icon -->
                <img src="{TOP_MENU.icon}" />&nbsp;
                <!-- END: icon -->
                <a class="dropdown-toggle" {TOP_MENU.dropdown_data_toggle} href="{TOP_MENU.link}" role="button" aria-expanded="false" title="{TOP_MENU.note}" {TOP_MENU.target}>{TOP_MENU.title_trim}<!-- BEGIN: has_sub --> <strong class="caret">&nbsp;</strong><!-- END: has_sub --></a>
                <!-- BEGIN: sub -->
                {SUB}
                <!-- END: sub -->
            </li>
            <!-- END: top_menu -->
            <li style="border-left: 1px solid #999;height:45px">

               
            </li>
        </ul>
                 <div class="dropdown">
                    <a class="search" href="" style="background: #fff;
                       border-radius: 50%;
                       left: 100px;
                       height:40px;
                       padding-left: 12px;
                       padding-right: 12px;
                       position: absolute;
                       top: 3px;
                       left: 108px;
                       cursor: pointer;color: #333 !important;"><em class="fa fa-search fa-lg" style="font-size: 1em !important;position: relative;
                          bottom: -3px;" ></em><span class="visible-xs-inline-block"> </span></a>
                    <ul class=" menu_search dropdown-menu" aria-labelledby="dropdownMenu1" style="background: none !important;padding-top: 5px;
                        width: 250px !important;
                        position: absolute;
                        top: 34px;">
                        <li><div class="input-group">
                                <input type="text" class="form-control" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}...">
                                <span class="input-group-btn"><button type="button" class="btn btn-info btnsearch" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y">
                                    <img src="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/images/search_bt.png" alt=""/></span>

                            </div></li>

                    </ul>
                </div>
    </div>
</div>
<script type="text/javascript" data-show="after">
    $(function () {
        checkWidthMenu();
        $(window).resize(checkWidthMenu);
    });

</script>
<!-- END: main -->
