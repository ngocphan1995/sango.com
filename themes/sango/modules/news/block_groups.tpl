<!-- BEGIN: main -->
<style>
    .group_new li:first-child
    {
        margin-left: -31px;
    }
    .group_new li:last-child 
    {
       margin-right: 0px !important;
       padding-right: 0px !important;
    }
    .group_new li:last-child .pull-left
    {
    padding-right: 0px !important;
    }
    .show {
    color: #333 !important;
    padding: 9px 16px;
    text-transform: uppercase;
}
.group_news:hover >.efloor-date
    {

        background-color: #ff6600;
        opacity: .8;
        padding: 8px 5px !important;
        width: 65%;
        color:#fff;
        position: absolute;
        top: 0px;
        left: 6px;
        -webkit-transform: translateX(0) translateY(0);
        transform: translateX(0) translateY(0);
        transition-duration: 0.4s;
    }
    
    .efloor-date
    {
        opacity: 0;
        position: absolute;
        top: 4px;
        left: 9px;
        webkit-transform: translateX(-100%);
        transform: translateX(-100%);
    }
.show:hover
{
    color:orange !important;
}
</style>
<div class="efloor-title" style="margin-top:1px">Công trình đã thực hiện 
    <span style="float: right;
                 font-size: 14px;
              text-transform: lowercase;margin-top: 21px;">
        <a href="san-pham-tieu-bieu"><i class="uk-icon-hand-o-right"></i> xem thêm </a>
    </span>
</div>
<ul class=" group_new">
    <!-- BEGIN: loop -->
    <li class="col-xs-24 col-sm-8 col-md-8 group_news" style="margin-right: 6px;margin-bottom: 10px;">
        <!-- BEGIN: img -->
        <a href="{ROW.link}" title="{ROW.title}"><img style="min-height: 190px;
                                                      max-height: 190px; padding-right: 10px;margin-bottom: 15px;" src="{ROW.thumb}" alt="{ROW.title}" width="360" class="img-thumbnail pull-left"/></a>
        <!-- END: img -->
        <a {TITLE} class="show" href="{ROW.link}" data-content="{ROW.hometext}" data-img="{ROW.thumb}" data-rel="block_tooltip">{ROW.title}</a>
        <div>{ROW.hometext}</div>
        <div class="efloor-date"> Hoàn thành tháng 09/2015</div>
    </li>
    <!-- END: loop -->
</ul>
<!-- BEGIN: tooltip -->
<script type="text/javascript">
    $(document).ready(function() {$("[data-rel='block_tooltip'][data-content!='']").tooltip({
	placement: "{TOOLTIP_POSITION}",
	html: true,
	title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
    }); });
</script>
<!-- END: tooltip -->
<!-- END: main -->