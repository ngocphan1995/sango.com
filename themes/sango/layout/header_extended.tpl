<noscript>
<div class="alert alert-danger">{LANG.nojs}</div>
</noscript>
<div class="body-bg">
    <div class="wraper">
        <header>
            <div class="container">
                <div id="header" class="row">
                    <div class="logo">
                        <div class="col-xs-24 col-sm-5 col-md-4">
                            <!-- BEGIN: image -->
                            <a title="{SITE_NAME}" href="{THEME_SITE_HREF}"><img src="{LOGO_SRC}" width="{LOGO_WIDTH}" height="{LOGO_HEIGHT}" alt="{SITE_NAME}" /></a>
                            <!-- END: image -->
                        </div>
                        <!-- BEGIN: swf -->
                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="{LOGO_WIDTH}" height="{LOGO_HEIGHT}" >
                            <param name="wmode" value="transparent" />
                            <param name="movie" value="{LOGO_SRC}" />
                            <param name="quality" value="high" />
                            <param name="menu" value="false" />
                            <param name="seamlesstabbing" value="false" />
                            <param name="allowscriptaccess" value="samedomain" />
                            <param name="loop" value="true" />
                            <!--[if !IE]> <-->
                            <object type="application/x-shockwave-flash" width="{LOGO_WIDTH}" height="{LOGO_HEIGHT}" data="{LOGO_SRC}" >
                                <param name="wmode" value="transparent" />
                                <param name="pluginurl" value="http://www.adobe.com/go/getflashplayer" />
                                <param name="loop" value="true" />
                                <param name="quality" value="high" />
                                <param name="menu" value="false" />
                                <param name="seamlesstabbing" value="false" />
                                <param name="allowscriptaccess" value="samedomain" />
                       	    </object>
                            <!--> <![endif]-->
                        </object>
                        <!-- END: swf -->
                        <!-- BEGIN: site_name_h1 -->
                        <h1>{SITE_NAME}</h1>
                        <div class="col-xs-24 col-sm-13 col-md-16 tt_logo">
                            <h2>{SITE_DESCRIPTION}</h2>
                        </div>
                        <!-- END: site_name_h1 -->
                        <!-- BEGIN: site_name_span -->
                        <span class="site_name">{SITE_NAME}</span>
                        <span class="site_description">{SITE_DESCRIPTION}</span>
                        <!-- END: site_name_span -->
                        <div class=" col-xs-24 col-sm-8 col-md-5 phone-hot" style="float: right;
                             margin-top: -35px;
                             margin-left: 42px;">
                            <em class=" fa fa-phone" style="color: #DEDEDE;
                                padding-right: 8px;"></em><span style="font-weight:400;font-size: 17px;">HOTLINE</span> <span style="color: #f16606;
                                font-size: 20px;
                                font-weight: bold;
                                                                                                           padding-left: 2px;">[PHONE_HOT]</span>
                        </div>
                    </div>
                </div>
        </header>
    </div>
    <nav class="second-nav" id="menusite">
        <div class="container">
            <div class="row">
                <div class="bg radius-top-left radius-top-right box-shadow">
                    [MENU_SITE]
                </div>
                <div class="dropdown">
                    <a class="search" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><em class="fa fa-search fa-lg" ></em><span class="visible-xs-inline-block"> </span></a>
                    <ul class=" menu_search dropdown-menu" aria-labelledby="dropdownMenu1" style="background: none !important;padding-top: 5px;
                        width: 250px !important;
                        position: absolute;
                        top: 34px;">
                        <li><div class="input-group">
                                <input type="text" class="form-control" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}...">
                                <span class="input-group-btn"><button type="button" class="btn btn-info btnsearch" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y">
                                        <i class="fa fa-search"></i>
                                </span>

                            </div></li>

                    </ul>
                </div>
            </div>
    </nav>
    <div class="wraper">
        <nav class="header-nav">
            <div class="container">
                <div class="personalArea">
                    [PERSONALAREA]
                </div>
                <div class="social-icons">
                    [SOCIAL_ICONS]
                </div>
                <div class="contactDefault">
                    [CONTACT_DEFAULT]
                </div>
                <div id="tip" data-content="">
                    <div class="bg"></div>
                </div>
            </div>
        </nav>
        <section>
            <div class="container" id="body">

                [THEME_ERROR_INFO]