<!-- BEGIN: tree -->
<li>
	<!-- BEGIN: icon -->
	<img src="{MENUTREE.icon}" />&nbsp;
	<!-- END: icon -->
	<a title="{MENUTREE.note}" href="{MENUTREE.link}" {MENUTREE.target}>{MENUTREE.title_trim}</a>
	<!-- BEGIN: tree_content -->
	<ul>
		{TREE_CONTENT}
	</ul>
	<!-- END: tree_content -->
</li>
<!-- END: tree -->
<!-- BEGIN: main -->
<link rel="stylesheet" type="text/css" media="screen" href="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/css/slimmenu.css" />
<style>
    
</style>

<ul class="slimmenu">
	
	<!-- BEGIN: loopcat1 -->
	<li {CAT1.class}>
		<!-- BEGIN: icon -->
        <img src="{CAT1.icon}" />&nbsp;
        <!-- END: icon -->
		<a title="{CAT1.note}" href="{CAT1.link}" {CAT1.target}>{CAT1.title_trim}</a>
		<!-- BEGIN: cat2 -->
			<ul>
				{HTML_CONTENT}
			</ul>
		<!-- END: cat2 -->
	</li>
	<!-- END: loopcat1 -->


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
                       cursor: pointer;color: #333 !important;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><em class="fa fa-search fa-lg" style="font-size: 1em !important;position: relative;
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
                                 
                        
<script	type="text/javascript" src="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/js/jquery.slimmenu.js"></script>
<script src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/ui/jquery.ui.effect.js"></script>
<script type="text/javascript">
	$('ul.slimmenu').slimmenu({
	    resizeWidth: (theme_responsive == '1') ? 768 : 0,
		collapserTitle: '',
		easingEffect:'easeInOutQuint',
		animSpeed: 'medium',
		indentChildren: true,
		childrenIndenter: '&nbsp;&nbsp; '
	});
        
</script>
<!-- END: main -->