<?php

/**
 * @Project NUKEVIET 4.0
 * @Author VINADES., JSC (contact@vinades.vn)
 * @Copyright (C) 2011 VINADES ., JSC. All rights reserved
 * @Createdate Jan 10, 2011  6:04:30 PM
 */

if( !defined( 'NV_MAINFILE' ) )
	die( 'Stop!!!' );

if( !nv_function_exists( 'nv_block_global_image' ) )
{
	function nv_block_data_config_image( $module, $data_block, $lang_block )
	{
		global $lang_module;

		$imagecontent = $data_block['imagecontent'];

		$html = "";
		if( !empty( $imagecontent ) )
		{
			$imagecontent = explode( "-||-", $imagecontent );
		}
		else
		{
			$imagecontent = array( );
		}
		$imagecontent = array_pad( $imagecontent, 5, '|||' );
		foreach( $imagecontent as $key => $_imagecontent )
		{
			$_imagecontent = explode( "|", $_imagecontent );
			if( !empty( $_imagecontent[0] ) )
				$_imagecontent[0] = NV_BASE_SITEURL . $_imagecontent[0];
			++$key;
			$html .= '<tr><td>Image ' . $key . ' Path: </td><td><input class="form-control w400 pull-left" type="text" name="imagePath[]" id="imagePath' . $key . '" value="' . $_imagecontent[0] . '"/><input type="button" class="btn btn-primary" value="Browse server" name="selectimg"/></td></tr>';
			$html .= '<tr><td>Image ' . $key . ' Title: </td><td><input class="form-control w400" type="text" name="imageTitle[]" value="' . $_imagecontent[1] . '"/></td></tr>';
			$html .= '<tr><td>Image ' . $key . ' Description: </td><td><input class="form-control w400" type="text" name="imageDescription[]" value="' . $_imagecontent[2] . '"/></td></tr>';
		}

		$html .= '<script type="text/javascript">
			//<![CDATA[
				$("input[name=selectimg]").click(function(){
					var area = $(this).prev().attr("id");
					var path= "' . NV_UPLOADS_DIR . '/slides";
					var type= "image";
					nv_open_browse(script_name + "?" + nv_name_variable + "=upload&popup=1&area=" + area+"&path="+path+"&type="+type, "NVImg", "850", "420","resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
					return false;
				});
			//]]>
			</script>';

		return $html;
	}

	function nv_block_data_config_image_submit( $module, $lang_block )
	{
		global $nv_Request;

		$imagePath = $nv_Request->get_array( 'imagePath', 'post', '' );
		$imageTitle = $nv_Request->get_array( 'imageTitle', 'post', '', 1 );
		$imageDescription = $nv_Request->get_array( 'imageDescription', 'post', '', 1 );

		$images = array( );
		for( $i = 0; $i < 10; ++$i )
		{

			$link = nv_is_url( $imageLink[$i] ) ? $imageLink[$i] : "";

			$img = substr( $imagePath[$i], strlen( NV_BASE_SITEURL ) );
			$images[] = $img . "|" . $imageTitle[$i] . "|" . $imageDescription[$i];

		}

		$images = !empty( $images ) ? implode( "-||-", $images ) : "";

		$return = array( );
		$return['error'] = array( );
		$return['config'] = array( );
		$return['config']['imagecontent'] = $images;
		return $return;
	}

	function nv_block_global_image( $block_config, $block_theme )
	{
		global $global_config, $lang_module;

		//print_r(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/language/' . NV_LANG_INTERFACE . '.php');die;
		if( file_exists( NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/language/' . NV_LANG_INTERFACE . '.php' ) )
		{
			include NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/language/' . NV_LANG_INTERFACE . '.php';
		}

		$imagecontent = $block_config['imagecontent'];

		if( empty( $imagecontent ) )
			return "";

		$imagecontent = explode( "-||-", $imagecontent );
		$images = array( );
		foreach( $imagecontent as $img )
		{

			$images[] = array_combine( array(
				'imgpath',
				'imgtitle',
				'imgdescription'
			), explode( "|", $img ) );
		}

		$imgcount = sizeof( $images );
		if( empty( $imgcount ) )
			return "";
		$xtpl = new XTemplate( "block_image.tpl", NV_ROOTDIR . "/themes/" . $block_theme . "/blocks" );
		$xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
		$xtpl->assign( 'TEMPLATE', $block_theme );
		$xtpl->assign( 'LANG', $lang_module );

		$j = 0;
		for( $i = 0; $i < $imgcount; ++$i )
		{
			if( !empty( $images[$i]['imgpath'] ) )
			{
				$j++;
				$images[$i]['imgpath'] = NV_BASE_SITEURL . $images[$i]['imgpath'];
				$xtpl->assign( 'IMAGE', $images[$i] );

				if( !empty( $images[$i]['imgtitle'] ) )
				{

					$xtpl->parse( 'main.img.style_' . $j . '.title' );
				}

				if( !empty( $images[$i]['imgdescription'] ) )
				{

					$xtpl->parse( 'main.img.style_' . $j . '.imgdescription' );
				}
				$xtpl->parse( 'main.img.style_' . $j );

				if( $j == 4 )
					$j = 0;

				$xtpl->parse( 'main.img' );
			}
		}

		$xtpl->parse( 'main' );
		return $xtpl->text( 'main' );
	}

}

$content = "";

if( defined( 'NV_SYSTEM' ) )
{

	global $site_mods, $module_name, $module_info, $my_head, $client_info, $global_config;

	$block_theme = "";
	if( file_exists( NV_ROOTDIR . "/themes/" . $global_config['site_theme'] . "/blocks/block_image.tpl" ) )
	{
		$block_theme = $global_config['site_theme'];
	}
	elseif( file_exists( NV_ROOTDIR . "/themes/" . $global_config['site_theme'] . "/blocks/block_image.tpl" ) )
	{
		$block_theme = "default";
	}

	if( !empty( $block_theme ) )
	{
		$content = nv_block_global_image( $block_config, $block_theme );
	}
	else
	{
		$content = $module_info['template'] . "Khong tim thay file giao dien";
	}

}
