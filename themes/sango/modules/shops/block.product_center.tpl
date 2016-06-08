<!-- BEGIN: main -->
<style>
    .title_a
    {
        padding: 8px 5px;
        color: #555;
        display: block;
        text-transform: uppercase;
        margin-left: -41px;
    }
    .crsl-item:hover >.efloor-date
    {

        background-color: #ff6600;
        opacity: .8;
        padding: 8px 5px !important;
        width: 65%;
        color:#fff;
        position: absolute;
        top: 0px;
        left: 13px;
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
    

</style>
<!-- BEGIN: lib -->
<script data-show="after" type="text/javascript" src="{JS_PATH}/responsiveCarousel.min.js"></script>
<!-- END: lib -->
<script data-show="after" type="text/javascript">
    jQuery(document).ready(function ($) {
        $('.product_center_{BLOCKID}').carousel({autoRotate: 4000, speed: 800, overflow: false, visible: '{NUMVIEW}', itemMinWidth: 150, itemEqualHeight: true, itemMargin: 10});
        $('.product_center_{BLOCKID}').on("initCarousel", function (event, defaults, obj) {
            $('#' + defaults.navigation).find('.previous, .next').css({opacity: 0});
            $('#product_center_{BLOCKID}').hover(function () {
                $(this).find('.previous').css({left: 0}).stop(true, true).animate({left: '20px', opacity: 1});
                $(this).find('.next').css({right: 0}).stop(true, true).animate({right: '20px', opacity: 1});
            }, function () {
                $(this).find('.previous').animate({left: 0, opacity: 0});
                $(this).find('.next').animate({right: 0, opacity: 0});
            });
        });
    });
</script>

<div id="product_center_{BLOCKID} product">

    <div class="gallery product_center_{BLOCKID} crsl-items" data-navigation="nav-07_{BLOCKID}">
        <div class="crsl-wrap">
            <div class="efloor-title" style="margin-top:1px">Công trình đã thực hiện <span style="float: right;
                                                                                           font-size: 14px;
                                                                                           text-transform: lowercase;margin-top: 21px;"><a href="san-pham-tieu-bieu"><i class="uk-icon-hand-o-right"></i> xem thêm </a></span></div>
            <!-- BEGIN: items -->
            <div class="crsl-item col-xs-24 col-sm-8 col-md-8" align="center">
                <a href="{LINK}" title="{TITLE}" class=""><img src="{SRC_IMG}" width="334" alt="{TITLE}" class="thumbnail_a" style="min-height: 180px;
                                                                          max-height: 180px;" /></a>
                <div class="efloor-date"> Hoàn thành tháng 09/2015</div>
                <p><a href="{LINK}" title="{TITLE}" class="title_a">{TITLE0}</a></p>
                <p style="text-align: justify;margin-left: 20px;
                   margin-right: 20px;">
                    <span><strong>Địa chỉ:</strong>Số 144, Nguyễn Xiển, Thanh Xuân, HN</span><br/>
                    <span><strong>Chủ đầu tư:</strong>Công Ty Cổ Phần Thương Mại & Đầu Tư Phát Triển Bình Minh</span>
                </p>
                <!-- BEGIN: contact -->
                <span class="money">{LANG.price_contact}</span>
                <!-- END: contact -->

            </div>
            <!-- END: items -->
        </div>
    </div>
</div>
<!-- END: main -->