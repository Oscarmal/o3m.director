<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* O3M
* Manejador de Vistas y asignación de variables
* 
*/
require_once('views.vars.error.php');
// require_once($Path[src].'build.menu_lateral.php');
// Modulo Padre
#Modulos
	$contenedor = array(
			 CONTENEDOR 		=> 'system/frm_contenedor.html'
			,FRM_HEADER 		=> 'system/frm_header.html'
			,FRM_MENU 			=> 'system/frm_menu.html'
			,FRM_FOOTER 		=> 'system/frm_footer.html'
			,FRM_CONTENT 		=> 'system/frm_contenido.html'
			,FRM_MENU_LATERAL	=> 'system/frm_menu_lateral.html'
		);

	$modulos = array(
				 GENERAL		=> 'views.vars.general.php'
				,ALABANZAS		=> 'views.vars.alabanzas.php'
				,CAPTURA		=> 'views.vars.captura.php'
				,IGLESIA		=> 'views.vars.iglesia.php'
				,PMIEL			=> 'views.vars.pmiel.php'
				,CATALOGOS		=> 'views.vars.catalogos.php'
				,ADMIN			=> 'views.vars.admin.php'
			);
	$idmenus = array(
	// ID's de tabla sis_menu_lateral
				 GENERAL		=> 1				
				,ALABANZAS		=> 2
				,CAPTURA		=> 3
				,IGLESIA		=> 4
				,PMIEL			=> 5
				,CATALOGOS		=> 6
				,ADMIN			=> 7
			);
	// $visitas = MODULO => SECCIONES
	$frm_vistas = array(
				 GENERAL => 
				 	array(
				 		 INICIO 			=> 'inicio.html'
				 		,DETALLE_USUARIO 	=> 'detalle_usuario.html'
				 		,LOGIN 				=> 'login.html'
				 	)
				,CAPTURA => 
					array(
						 LISTADO 		=> 'listado.html'
						,ALBUMS 		=> 'albums.html'
						,ARTISTAS 		=> 'artistas.html'
						,CANTOS 		=> 'cantos.html'
					)
				,IGLESIA =>
					array(
						 IGLESIA 		=> 'iglesia.html'
						,CONTACTO 		=> 'contacto.html'
						,UBICACION 		=> 'ubicacion.html'
						,FACEBOOK 		=> 'facebook.html'
						,TWITTER 		=> 'twitter.html'
						,YOUTUBE 		=> 'youtube.html'
					)
				,CATALOGOS => 
					array(
						 LISTADO 		=> 'listado.html'
						,CATEGORIAS 	=> 'categorias.html'
						,COMPASES 		=> 'compases.html'
						,ESCALAS 		=> 'escalas.html'
						,NOTAS 			=> 'notas.html'
						,RITMOS 		=> 'ritmos.html'
						,ALBUMS 		=> 'albums.html'
						,ARTISTAS 		=> 'artistas.html'
						,CANTOS 		=> 'cantos.html'
					)
				,ERROR  => 'error.html'
			);

	# Comandos
	function frm_vistas($cmd){
		global $contenedor; 
		$seccion = $cmd;
		if(array_key_exists($seccion,$contenedor)){
			$html = strtolower($contenedor[$seccion]);		
		}else{
			$html = $contenedor	[ERROR];
		}		
		return $html;
	}

	# Variables
	function frm_vars($modulo, $seccion, $urlParams=array()){
		global $frm_vistas, $modulos;	
		$mod  = strtoupper(enArray($modulo,$modulos));
		$sec = strtoupper(enArray($seccion,$frm_vistas[$mod]));	
		if($mod){
			$inc = $modulos[$mod];
		}
		if($sec){
			$vars = vars_frame($urlParams, $inc, $modulo, $seccion);
		}else{
			$vars = vars_frm_error($sec);		
		}
		return $vars;
	}
	function vars_frame($urlParams, $inc, $modulo, $seccion){
		// Carga la vista del Contenedor principal
		global $cfg, $var, $parm, $Path, $dic, $contenedor, $usuario, $in, $idmenus;
		$icono_footer=$var[ico_05];
		## Logica de negocio ##
		if(!file_exists($Path[src].$inc)){				
			print_error('El archivo no existe: '.$inc);
		}
		else{
			require_once($Path[src].$inc);
			// FRM_HEADER
			$header_opc = array(
						 img_logo		=> $var[img_logo]
						,ico_user		=> $var[ico_user]
						,ico_exit		=> $var[ico_exit]
						,pais			=> utf8_encode($usuario[pais])
						,USUARIO		=> ucwords(strtolower(utf8_encode($usuario[nombre])))
						,APP_TITLE 		=> utf8_encode($cfg[app_title])
						,LINK_INICIO 	=> $Path['url'].$parm[GENERAL].'/'.$parm[INICIO]
						,FECHA_HOY		=> fechaHoy()
						,LINK_SALIR		=> $Path['url'].$parm[GENERAL].'/'.$parm[LOGOUT]
						,TIMEOUT 		=> $cfg[php_session_lifetime]
					);
			$HEADER 	= contenidoHtml($contenedor[FRM_HEADER], $header_opc);
			// --
			// FRM_MENU		
			$bc_modulo  = ($modulo)?ucfirst(strtolower($modulo)):'';
			$bc_seccion = ($seccion)?$cfg['breadcrums_char'].ucfirst(strtolower($seccion)):'';
			$menu_opc 	= array(
								 MENU 		=> $usuario[menu]
								,bienvenida => $dic[general][barra].$cfg['breadcrums_char']
								,modulo 	=> $bc_modulo
								,seccion 	=> $bc_seccion
								,MODULE 	=> strtolower($modulo)
								,SECTION 	=> $seccion
								,FOLDER 	=> $cfg[app_folder]
								,USUARIO	=> ucwords(strtolower(utf8_encode($usuario[nombre])))
								,EMAIL 		=> utf8_encode($usuario[email])
								,GRUPO 		=> ucwords(strtolower(utf8_encode($usuario[grupo])))
								,URL	=> $Path['url']
								,LINK_ACORDES => $Path['url'].$parm[CAPTURA].'/'.$parm[LISTADO]
							);
			$MENU 		= contenidoHtml($contenedor[FRM_MENU], $menu_opc);
			// --	
			// FRM_MENU_LEFT						
			// if($idmenus[strtoupper($modulo)]){
			// 	$menu_lateral = buildMenuLateral($idmenus[strtoupper($modulo)]);
			// 	$menu_lateral_opc = array( MENU => $menu_lateral);
			// 	$MENU_LATERAL 	= contenidoHtml($contenedor[FRM_MENU_LATERAL],$menu_lateral_opc);
			// }
			// else{
			// 	//MOSTRAR MENU DE BIENVENIDA VACIO
			// 	$menu_lateral_opc = array(
			// 			 MENU 			=> ""	
			// 		);
				
			// 	$MENU_LATERAL 	= contenidoHtml($contenedor[FRM_MENU_LATERAL],$menu_lateral_opc);
			// }
			// --	
			// FRM_CONTENIDO
			$vista_new 	= $contenedor[FRM_CONTENT];
			$tpl_data 	= tpl_vars($seccion,$urlParams); 
			$CONTENIDO 	= contenidoHtml($vista_new, $tpl_data); 
			// --
			// FRM_FOOTER
			$footer_opc = array(ANIO => date('Y'));
			$FOOTER 	= contenidoHtml($contenedor[FRM_FOOTER], $footer_opc);
			// --
			## Envio de valores ##
			$negocio = array(
						 MORE 				=> $tpl_data[MORE]				
						,FRM_HEADER			=> $HEADER
						,FRM_MENU 			=> $MENU
						,FRM_CONTENIDO		=> $CONTENIDO
						,FRM_FOOTER			=> $FOOTER
						// ,FRM_MENU_LATERAL	=> $MENU_LATERAL
					);
			$texto = array(
						 salir 			=> $dic[general][salir]
						,usuario 		=> $dic[general][usuario]
						,user 			=> $usuario[nombre_usuario]
						,ICONO_FOOTER 	=> $icono_footer
					);
			$data = array_merge($negocio, $texto);
			return $data;
		}
	}
	function vars_frm_error($cmd){
		global $dic;
		## Envio de valores ##
		$data = array(MENSAJE => $dic[error][mensaje].': '.$cmd);
		return $data;
	}
?>