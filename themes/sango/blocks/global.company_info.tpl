<!-- BEGIN: main -->
<ul class="company_info" itemscope itemtype="http://schema.org/LocalBusiness">
    <!-- BEGIN: company_name --><li class="company_name"><span itemprop="name"><strong>{DATA.company_name}</strong></span><!-- BEGIN: company_sortname --> (<span itemprop="alternateName">{DATA.company_sortname}</span>)<!-- END: company_sortname --></li><!-- END: company_name -->
    <!-- BEGIN: company_regcode --><li><em class="fa fa-file-text"></em><span>{LICENSE}</span></li><!-- END: company_regcode -->
    <!-- BEGIN: company_responsibility --><li><em class="fa fa-flag"></em><span>{LANG.company_responsibility}: <span itemprop="founder" itemscope itemtype="http://schema.org/Person"><span itemprop="name">{DATA.company_responsibility}</span></span></span></li><!-- END: company_responsibility -->
    <!-- BEGIN: company_address --><li><a<!-- BEGIN: company_map_triger --> class="pointer" data-toggle="modal" data-target="#company-map-modal"<!-- END: company_map_triger -->><span><strong>{LANG.company_address}:</strong> <span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress"><span itemprop="addressLocality" id="company-address">{DATA.company_address}</span></span></span></a></li><!-- END: company_address -->
    <!-- BEGIN: company_phone --><li><span><strong>{LANG.company_phone}:</strong> <!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><!-- BEGIN: href --><a href="tel:{PHONE.href}"><!-- END: href --><span itemprop="telephone">{PHONE.number}</span><!-- BEGIN: href2 --></a><!-- END: href2 --><!-- END: item --> - </span></li><!-- END: company_phone -->
    <!-- BEGIN: company_fax --><li style="position: absolute;
                                   top: 119px;
                                   right: 127px;" class="company_fax">{LANG.company_fax}: <span itemprop="faxNumber">{DATA.company_fax}</span></span></li><!-- END: company_fax -->
    <!-- BEGIN: company_website --><li><span><strong>{LANG.company_website}:</strong> <!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="{WEBSITE}" target="_blank"><span itemprop="url" style="color:#059">{WEBSITE}</span></a><!-- END: item --></span></li><!-- END: company_website -->
    <!-- BEGIN: company_email --><li><strong>{LANG.company_email}:</strong> <!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="mailto:{EMAIL}"><span itemprop="email" style="color:#059">{EMAIL}</span></a><!-- END: item --></span></li><!-- END: company_email -->
</ul>
<!-- BEGIN: company_map_modal -->
<div class="modal fade" id="company-map-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div id="company-map" data-clat="{DATA.company_mapcenterlat}" data-clng="{DATA.company_mapcenterlng}" data-lat="{DATA.company_maplat}" data-lng="{DATA.company_maplng}" data-zoom="{DATA.company_mapzoom}"></div>
            </div>
        </div>
    </div>
</div>
<!-- END: company_map_modal -->
<!-- END: main -->