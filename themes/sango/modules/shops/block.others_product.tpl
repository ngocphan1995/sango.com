<!-- BEGIN: main -->
<style>
    .icon-xem
    {
        font-family: FontAwesome;
        display: inline-block;
        font-weight: 400;
        font-style: normal;
        line-height: 1;
        -webkit-font-smoothing: antialiased;
        margin-left:3px;
    }
    .icon-xem:before
    {
        content: "\f0a9";

    }
    .xemthem
    {
        margin-left: -33px;
        color: #333 !important;
    }
    .xemthem:hover
    {
        color:#ff6600 !important;
    }
    .title_imges:hover
    {

        position: relative;
        bottom: 100px;
        background-color: #ad4903 !important;
        opacity: .7;
        
        transition: bottom 1s ease-out;
    }
     .title_imges:hover a
    {

        color:#fff !important;
    }
    .title_imges
    {
        padding: 15px !important;
        background-color: #f1ecea !important;
        color: #333;
        opacity: .6;
        bottom: 66px;
        position: relative;
        transition: all 1s ease-out;
        //width: 344px;
        margin-right: -4px;
        margin-left: 6px;
        line-height: 30px;
        text-decoration: none;
        font-size: 21px;
        font-family: segoe ui;
    }
    .title_img
    {
    color:#333 !important;
    }
    .title_img:hover
    {
       color:#fff !important;
    }
    a .uk-icon-chevron-right {
    float: right;
    font-size: 20px;
    background-color: #ec6403;
    border-radius: 50%;
    width: 30px;
    height: 30px;
    text-align: center;
    padding-top: 4px;
    padding-left: 3px;
    border: 2px solid #fff;
    color: #fff;
    font-family: FontAwesome;
    display: inline-block;
    font-weight: 400;
    font-style: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
}
a .uk-icon-chevron-right:before
{
    content: "\f054";
}
</style>
<div class="others_product">
    <ul>
        <!-- BEGIN: loop -->
        <div class="col-xs-24 col-sm-8 col-md-8 ">
            <li>
                <a href="{link}" title="{title}"><img src="{src_img}" alt="{title}" class="img-thumbnail" style="max-height: 226px;
                                                      min-height: 226px;"/></a>
                <br />
                <div class="title_imges">
                    <a href="{link}" title="{title}" class="title_img">{title}<i class="uk-icon-chevron-right"></i></a>
                </div>
               
             

            </li>
        </div>
        <!-- END: loop -->

    </ul>
</div>
<!-- END: main -->