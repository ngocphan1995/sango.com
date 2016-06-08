<!-- BEGIN: main -->
<style>
    .thumbnail_img
    {
        //border:1px solid #000;
        margin-bottom: 15px;
    }
    .thumbnail_img:hover
    {
    box-shadow: 0 0 20px rgba(0,0,0,0.2);
    }
    .title_a
    {
        margin-left: -190px;

        color: #333 !important;
    }
    .title_a:hover
    {
        color: orange !important;
    }
    .efloor-title {
        font-family: segoe ui;
        font-size: 24px;
        margin-bottom: 5px;
        margin-left: 15px;
        margin-right: 27px;
        //margin-top: -30px;
        text-transform: uppercase;
        padding-bottom: 5px;
        border-bottom: 1px solid #f5f5f5;
    }
    .efloor-title span a {
        color: #999;
    }
    .efloor-title span a:hover {
        color: orange !important;
    }
    .uk-icon-hand-o-right {
        font-family: FontAwesome;
        display: inline-block;
        font-weight: 400;
        font-style: normal;
        line-height: 1;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        font-size: 14px !important;
    }
    .uk-icon-hand-o-right:before {
        content: "\f0a4";
    }
    .pro-lienhe a {
    background: #ff6600;
    color: #fff;
    font-size: 14px;
    padding: 8px 18px;
    display: inline-block;
    margin-bottom: 5px;
}
.slider_block
{
    margin-right: -12px;
    clear:left;
}
.pro-lienhe {
    margin-bottom: 10px;
}
.thumbnail_content
{
    height: 430px;
}
</style>
<!-- BEGIN: lib -->

<link href="{LIB_PATH}css/jquery.bxslider.css" rel="stylesheet" />
<!-- END: lib -->
<script type="text/javascript">
    $(document).ready(function () {
        $('.slider_{BLOCKID}').bxSlider({
            auto:{AUTO},
            mode: '{MODE}',
            speed:{SPEED},
            slideWidth:{WIDTH},
            slideMargin:{MARGIN},
            minSlides:{NUMVIEW},
            maxSlides:{NUMVIEW},
            moveSlides:{MOVE},
            pager:{PAGER},
            adaptiveHeight: true
        });
    });
</script>

<div class=" slider_{BLOCKID} slider_block" style="">
    <div class="efloor-title">Sản phẩm tiêu biểu <span style="float: right;
                                                       font-size: 14px;
                                                       text-transform: lowercase;margin-top: 21px;"><a href="san-pham-tieu-bieu"><i class="uk-icon-hand-o-right"></i> xem thêm </a></span></div>
    <!-- BEGIN: items -->
    <div class="col-xs-24 col-sm-6 col-md-6 slider_{BLOCKID}_item thumbnail_img" align="center">
        <div class="thumbnail_content">
        <a href="{LINK}" title="{TITLE}"><img src="{SRC_IMG}" alt="{TITLE}" class="thumbnail"style="min-height: 290px;
                                              max-height: 290px;
                                              width: 245px;" /></a>
        <p style="margin-top: -11px;"><a href="{LINK}" title="{TITLE}" class="title_a">{TITLE0}</a></p>
        <p style="padding-bottom: 5px;
           padding-right: 15px;
           text-align: justify;
           margin-left: 25px;">{hometext}</p>  
        </div>
        <div class="pro-lienhe"><a href="#thong-tin-lien-he" data-uk-modal="">Liên hệ</a></div>

        <!-- BEGIN: contact -->
        <span class="money">{LANG.price_contact}</span>
        <!-- END: contact -->

    </div>
    <!-- END: items -->
</div>

<!-- END: main -->
