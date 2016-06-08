<?php

if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (! nv_function_exists('nv_contactmenu')) {
    function nv_block_config_contact_menu($module, $data_block, $lang_block)
    {
        global $lang_global, $selectthemes;

        // Find language file
        if (file_exists(NV_ROOTDIR . '/themes/' . $selectthemes . '/language/' . NV_LANG_INTERFACE . '.php')) {
            include NV_ROOTDIR . '/themes/' . $selectthemes . '/language/' . NV_LANG_INTERFACE . '.php';
        }
        $html = '<tr>';
        $html .= '<td>' . $lang_global['kinhdoanh'] . '</td>';
        $html .= '<td><input type="text" class="form-control" name="yahoo_kinhdoanh" value="' . $data_block['yahoo_kinhdoanh'] . '">('. $lang_global['yahoo'] .')</td>';
        $html .= '<td><input type="text" class="form-control" name="skype_kinhdoanh" value="' . $data_block['skype_kinhdoanh'] . '">('. $lang_global['skype'] .')</td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>' . $lang_global['tuvan'] . '</td>';
        $html .= '<td><input type="text" class="form-control" name="yahoo_tuvan" value="' . $data_block['yahoo_tuvan'] . '">('. $lang_global['yahoo'] .')</td>';
        $html .= '<td><input type="text" class="form-control" name="skype_tuvan" value="' . $data_block['skype_tuvan'] . '">('. $lang_global['skype'] .')</td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>' . $lang_global['kithuat'] . '</td>';
        $html .= '<td><input type="text" class="form-control" name="yahoo_kithuat" value="' . $data_block['yahoo_kithuat'] . '">('. $lang_global['yahoo'] .')</td>';
        $html .= '<td><input type="text" class="form-control" name="skype_kithuat" value="' . $data_block['skype_kithuat'] . '">('. $lang_global['skype'] .')</td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>' . $lang_global['dienthoai'] . '</td>';
        $html .= '<td>
					<div class="form-group"><input type="text" class="form-control" name="config_dienthoai" value="' . $data_block['dienthoai'] . '"></div>
					<button class="btn btn-default btn-xs" onclick="modalShow(\'' . $lang_global['phone_note_title'] . '\',\'' . $lang_global['phone_note_content'] . '\');return!1;">' . $lang_global['phone_note_title'] . '</button>
				  </td>';
        $html .= '</tr>';
        return $html;
    }
     function nv_block_config_contact_menu_submit()
    {
        global $nv_Request;

        $return = array();
        $return['error'] = array();
        $return['config']['yahoo_kinhdoanh'] = $nv_Request->get_title('yahoo_kinhdoanh', 'post');
        $return['config']['skype_kinhdoanh'] = $nv_Request->get_title('skype_kinhdoanh', 'post');
        $return['config']['yahoo_tuvan'] = $nv_Request->get_title('yahoo_tuvan', 'post');
        $return['config']['skype_tuvan'] = $nv_Request->get_title('skype_tuvan', 'post');
        $return['config']['yahoo_kithuat'] = $nv_Request->get_title('yahoo_kithuat', 'post');
        $return['config']['skype_kithuat'] = $nv_Request->get_title('skype_kithuat', 'post');
        $return['config']['dienthoai'] = $nv_Request->get_title('config_dienthoai', 'post');
        

        return $return;
    }
  function nv_contactmenu($block_config)
    {
        global $global_config, $lang_global;
        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.contactmenu.tpl')) {
            $block_theme = $global_config['module_theme'];
            
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.contactmenu.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.contactmenu.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('LANG', $lang_global);
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('DATA', $block_config);
        //print_r($block_config);die();
        if (! empty($block_config['yahoo_kinhdoanh'])) {
           $tr=explode('@', $block_config['yahoo_kinhdoanh']);
            $xtpl->assign('YAHOO_KINHDOANH',$tr[0]);
            $tr=explode('@', $block_config['skype_kinhdoanh']);
            $xtpl->assign('SKYPE_KINHDOANH',$tr[0]);
            $xtpl->parse('main.kinhdoanh');
        }
         if (! empty($block_config['yahoo_tuvan'])) {
             $tr=explode('@', $block_config['yahoo_tuvan']);
            $xtpl->assign('TUVAN',$tr[0]);
            $xtpl->parse('main.tuvan');
        }
         if (! empty($block_config['yahoo_kithuat'])) {
             $tr=explode('@', $block_config['yahoo_kithuat']);
            $xtpl->assign('KITHUAT',$tr[0]);
            $xtpl->parse('main.kithuat');
        }
        if (! empty($block_config['dienthoai'])) {
            $nums = array_map("trim", explode("|", nv_unhtmlspecialchars($block_config['dienthoai'])));
            
            foreach ($nums as $k => $num) {
                unset($m);
                if (preg_match("/^(.*)\s*\[([0-9\+\.\,\;\*\#]+)\]$/", $num, $m)) {
                    $xtpl->assign('PHONE', array( 'number' => nv_htmlspecialchars($m[1]), 'href' => $m[2] ));
                    $xtpl->parse('main.dienthoai.item.href');
                    $xtpl->parse('main.dienthoai.item.href2');
                } else {
                    $num = preg_replace("/\[[^\]]*\]/", "", $num);
                    $xtpl->assign('PHONE', array( 'number' => nv_htmlspecialchars($num) ));
                }
                if ($k) {
                    $xtpl->parse('main.dienthoai.item.comma');
                }
                $xtpl->parse('main.dienthoai.item');
            }

            $xtpl->parse('main.dienthoai');
        }
       
        
        $xtpl->parse('main');
        return $xtpl->text('main');
    }
    
}
if (defined('NV_SYSTEM')) {
    $content = nv_contactmenu($block_config);
}
