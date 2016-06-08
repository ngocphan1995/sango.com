<!-- BEGIN: main -->
<style type="text/css">
    .captionOrange, .captionBlack {
        color: #fff;
        font-size: 23px;
        line-height: 30px;
        text-align: center;
        border-radius: 4px;
    }
    .captionOrange {
        background: #000;
        opacity: 0.5;
        filter: alpha(opacity=50);
    }
    .captionBlack {
        font-size: 16px;
        background: #000;
        opacity: 0.5;
        filter: alpha(opacity=50);
    }
    a.captionOrange, A.captionOrange:active, A.captionOrange:visited {
        color: #ffffff;
        text-decoration: none;
    }
    a.captionOrange:hover {
        color: #eb5100;
        text-decoration: underline;
        background-color: #eeeeee;
        background-color: rgba(238, 238, 238, 0.7);
    }
</style>

<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jssor.core.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jssor.utils.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jssor.slider.js"></script>

<div id="slider1_container" style="position: relative;width:1080px;
     height: 445px; overflow: hidden;z-index: 100;margin-bottom: 5px;margin-left: 3px;">

    <!-- Loading Screen -->
    <div u="loading" style="position: absolute; top: 0px; left: 0px;">
        <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;

             background-color: #000; top: 0px; left: 0px;width: 100%; height:100%;"></div>
        <div style="position: absolute; display: block; background: url('{NV_BASE_SITEURL}themes/{TEMPLATE}/images/slide/loading.gif') no-repeat center center;

             top: 0px; left: 0px;width: 100%;height:100%;"></div>
    </div>

    <!-- Slides Container -->
    <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1080px; height: 445px;
         overflow: hidden;">
        <!-- BEGIN: img -->
        <!-- BEGIN: style_1 -->
        <div>
            <img u="image" src="{IMAGE.imgpath}" />
            <!-- BEGIN: title -->
            <div u=caption t="CLIP|L" du="350" class="captionOrange"  style="position:absolute; left:74px; top: 180px; width:450px; height:50px; text-align: left; padding: 8px 8px 8px 30px" >
                {IMAGE.imgtitle}
            </div>
            <!-- END: title -->

            <!-- BEGIN: imgdescription -->
            <div u=caption t="CLIP|L" du="350" class="captionOrange" style="position:absolute; left:74px; top: 235px; width:232px; height:47px; text-align: left; padding: 8px 8px 8px 30px">
                {IMAGE.imgdescription}
            </div>
            <!-- END: imgdescription -->
        </div>
        <!-- END: style_1 -->
        <!-- BEGIN: style_2 -->
        <div>
            <img u="image" src="{IMAGE.imgpath}" />
            <!-- BEGIN: title -->
            <div u=caption t="CLIP|L" du="350" class="captionOrange"  style="position:absolute; left:74px; top: 180px; width:450px; height:50px; text-align: left; padding: 8px 8px 8px 30px" >
                {IMAGE.imgtitle}
            </div>
            <!-- END: title -->
            <!-- BEGIN: imgdescription -->
            <div u=caption t="CLIP|L" du="350" class="captionOrange" style="position:absolute; left:74px; top: 235px; width:232px; height:47px; text-align: left; padding: 8px 8px 8px 30px">
                {IMAGE.imgdescription}
            </div>
            <!-- END: imgdescription -->
        </div>
        <!-- END: style_2 -->
        <!-- BEGIN: style_3 -->
        <div>
            <img u="image" src="{IMAGE.imgpath}" />
            <!-- BEGIN: title -->
            <div u=caption t="CLIP|L" du="350" class="captionOrange"  style="position:absolute; left:74px; top: 180px; width:450px; height:50px; text-align: left; padding: 8px 8px 8px 30px" >
                {IMAGE.imgtitle}
            </div>
            <!-- END: title -->

            <!-- BEGIN: imgdescription -->
            <div u=caption t="CLIP|L" du="350" class="captionOrange" style="position:absolute; left:74px; top: 235px; width:232px; height:47px; text-align: left; padding: 8px 8px 8px 30px">
                {IMAGE.imgdescription}
            </div>
            <!-- END: imgdescription -->
        </div>
        <!-- END: style_3 -->
        <!-- BEGIN: style_4 -->
        <div>
            <img u="image" src="{IMAGE.imgpath}" />
            <!-- BEGIN: title -->
            <div u=caption t="CLIP|L" du="350" class="captionOrange"  style="position:absolute; left:74px; top: 180px; width:450px; height:50px; text-align: left; padding: 8px 8px 8px 30px" >
                {IMAGE.imgtitle}
            </div>
            <!-- END: title -->

            <!-- BEGIN: imgdescription -->
            <div u=caption t="CLIP|L" du="350" class="captionOrange" style="position:absolute; left:74px; top: 235px; width:232px; height:47px; text-align: left; padding: 8px 8px 8px 30px">
                {IMAGE.imgdescription}
            </div>
            <!-- END: imgdescription -->
        </div>
        <!-- END: style_4 -->
        <!-- END: img -->
    </div>

    <style type="text/css">
        .jssorb03 {
            position: absolute;
        }
        .jssorb03 div, .jssorb03 div:hover, .jssorb03 .av {
            position: absolute;
            /* size of bullet elment */
            width: 21px;
            height: 21px;
            text-align: center;
            line-height: 21px;
            color: white;
            font-size: 12px;
            background: url('{NV_BASE_SITEURL}themes/{TEMPLATE}/images/slide/b03.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb03 div {
            background-position: -5px -4px;
        }
        .jssorb03 div:hover, .jssorb03 .av:hover {
            background-position: -35px -4px;
        }
        .jssorb03 .av {
            background-position: -65px -4px;
        }
        .jssorb03 .dn, .jssorb03 .dn:hover {
            background-position: -95px -4px;
        }
    </style>
    <!-- bullet navigator container -->
    <!--<div u="navigator" class="jssorb03" style="position: absolute; bottom: 16px; left: 6px;">
    <!-- bullet navigator item prototype -->
    <!--<div u="prototype">
            <div u="numbertemplate"></div>
    </div>
</div>-->

    <style type="text/css">
        .jssora20r
        {
             display: block;
            position: absolute;
            /* size of arrow element */
            width: 55px;
            height: 55px;
            cursor: pointer;

            overflow: hidden;
            background: url('{NV_BASE_SITEURL}themes/{TEMPLATE}/images/slide/btn_next.jpg') no-repeat;
        }
        .jssora20l
        
        {
             display: block;
            position: absolute;
            /* size of arrow element */
            width: 55px;
            height: 55px;
            cursor: pointer;

            overflow: hidden;
            background: url('{NV_BASE_SITEURL}themes/{TEMPLATE}/images/slide/btn_prev.jpg') no-repeat;
        }
        .jssora20ldn, .jssora20rdn {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 55px;
            height: 55px;
            cursor: pointer;
            overflow: hidden;
        }
        .jssora20l {
            //background-position: -3px -33px;
        }
        .jssora20r {
           // background-position: -63px -33px;
        }
        .jssora20r:hover {
           // background-position: -183px -33px;
        }
        .jssora20l.jssora20ldn {
            background-position: -243px -33px;
        }
        .jssora20r.jssora20rdn {
            background-position: -303px -33px;
        }
    </style>
    <!-- Arrow Left -->
    <span u="arrowleft" class="jssora20l" style="width: 55px; height: 55px; top: 123px; left: -1px;"> </span>
    <!-- Arrow Right -->
    <span u="arrowright" class="jssora20r" style="width: 55px; height: 55px; top: 123px; right: -24px"> </span>
    <!-- Arrow Navigator Skin End -->
</div>
<!-- Jssor Slider End -->

<!-- END: main -->