<?php /*O3M*/
/**
* Nombre: 		O3M Guitar Tabs PHP Class
* Descripción:	Parsea el texto recibido, detecta acordes y le da formato HTML y/o TXT
* @author:		Oscar Maldonado - O3M
* Creado: 		2015-12-29 O3M
* Example:
*  		$cifrado = new guitarTabs();
*		$cifrado->cancion($_POST['lyrics']);
*		$cifrado->acordes();
*		$cifrado>txt();
*		$cifrado->html();
*/
if(!class_exists('guitarTabs')){
	class guitarTabs {
		private $lyrics;
		private $tabs;
		private $cifrado;
		public $titulo, $canta, $autor, $album, $anio;
		public $tempo, $compas, $escala, $ritmo, $categoria;
		private $css, $js;
		private $espacio;

		public function __construct(){
			global $Path;
			$this->lyrics 	= array();
			$this->tabs 	= array();
			$this->cifrado 	= array();
			$this->titulo 	= (!$this->titulo)?'TITULO':strtoupper($this->titulo);
			$this->autor 	= (!$this->autor)?'Autor':strtoupper($this->autor);
			$this->canta 	= (!$this->canta)?'Canta':strtoupper($this->canta);
			$this->album 	= (!$this->album)?'Album':$this->album;
			$this->anio 	= (!$this->anio)?'Año':$this->anio;
			$this->tempo 	= (!$this->tempo)?'Tempo':$this->tempo;
			$this->compas 	= (!$this->compas)?'Compas':$this->compas;
			$this->escala 	= (!$this->escala)?'Escala':$this->escala;
			$this->ritmo 	= (!$this->ritmo)?'Ritmo':$this->ritmo;
			$this->categoria= (!$this->categoria)?'Categorías':$this->categoria;
			$this->js       = $Path[url].'common/php/o3m.guitarTabs/o3m.guitarTabs.class.js';
	        $this->css      = $Path[url].'common/php/o3m.guitarTabs/o3m.guitarTabs.class.css';
	        $this->espacio 	= '@';
		}

		public function header($html=false){
		// Construye header HTML o TXT 
			if($html){
				$header  = '<div id="tabs-header">';
				$header .= '<table >';
				$header .= '<tr>';
				$header .= '<th class="borde-izq">'.'ESCALA: '.'</th>';
				$header .= '<td class="escala">'.$this->escala.'</td>';
				$header .= '<td class="td-intemedio">'.'&nbsp;'.'</td>';
				$header .= '<th >'.'COMPÁS: '.'</th>';
				$header .= '<td class="borde-der">'.$this->compas.'</td>';
				$header .= '</tr>';
				$header .= '<tr>';
				$header .= '<th class="borde-izq">'.'RITMO: '.'</th>';
				$header .= '<td >'.$this->ritmo.'</td>';
				$header .= '<td class="td-intemedio">'.'&nbsp;'.'</td>';
				$header .= '<th >'.'TEMPO: '.'</th>';
				$header .= '<td class="borde-der">'.$this->tempo.'</td>';
				$header .= '</tr>';
				$header .= '<tr>';
				$header .= '<th class="borde-izq">'.'CANTA: '.'</th>';
				$header .= '<td >'.$this->canta.'</td>';
				$header .= '<td class="td-intemedio">'.'&nbsp;'.'</td>';
				$header .= '<th >'.'ALBUM: '.'</th>';
				$header .= '<td class="borde-der">'.$this->album.'</td>';
				$header .= '</tr>';
				$header .= '<tr>';
				$header .= '<th class="borde-abajo borde-izq">'.'CATEGORÍAS: '.'</th>';
				$header .= '<td class="borde-abajo" colspan="2">'.$this->categoria.'</td>';
				$header .= '<th class="borde-abajo">'.'AÑO: '.'</th>';
				$header .= '<td class="borde-abajo borde-der">'.$this->anio.'</td>';
				$header .= '</tr>';
				$header .= '<tr>';
				$header .= '<td colspan="5" class="titulo">'.$this->titulo.'</td>';
				$header .= '</tr>';
				$header .= '<tr>';
				$header .= '<td colspan="5" class="centro" >'.'<span class="subtitulo-lbl">AUTOR: </span><span class="subtitulo">'.$this->autor.'</span></td>';
				$header .= '</tr>';
				$header .= '<tr>';
				$header .= '<td colspan="5" class="centro" >'.'<span class="subtitulo-lbl">ACORDES: </span><span class="subtitulo">'.$this->acordes().'</span></td>';
				$header .= '</tr>';
				$header .= '</table>';
				$header .= '</div>';
			}else{
				$header .= 'Titulo 		: '.$this->titulo."\r\n";
				$header .= 'Autor 		: '.$this->autor."\r\n";
				$header .= 'Canta 		: '.$this->canta."\r\n";
				$header .= 'Album 		: '.$this->album."\r\n";
				$header .= 'Año 		: '.$this->anio."\r\n";
				$header .= '----------------------------'."\r\n";
				$header .= 'Escala 		: '.$this->escala."\r\n";
				$header .= 'Compás 		: '.$this->compas."\r\n";
				$header .= 'Tempo 		: '.$this->tempo."\r\n";
				$header .= 'Ritmo 		: '.$this->ritmo."\r\n";
				$header .= 'Categorías 	: '.$this->categoria."\r\n";
				$header .= 'Acordes 	: '.$this->acordes()."\r\n";
				$header .= '----------------------------'."\r\n";
			}
			return $header; 
		}

		private function footer($html=false){
		// Construye footer en HTML o TXT
			if($html){
				$footer  = '<div id="tabs-footer">';
				$footer .= '&copy; 2009-'.date('Y').', Iglesia de Jesucristo Mahanaim Tlalpan'." - ";
				$footer .= 'Palabra Miel México.'.'<br/>';
				$footer .= 'By Oscar Maldonado - O3M &reg;'." - ";
				$footer .= 'Todos los derechos reservados.'."<br/>";
				$footer .= '<br/>';
				$footer .= '</div>';
			}else{
				$footer .= '----------------------------'."\r\n";
				$footer .= '©2009-'.date('Y').', Iglesia de Jesucristo Mahanaim Tlapan'." - ";
				$footer .= "Palabra Miel México."."\n";
				$footer .= 'By Oscar Maldonado - O3M®'." - ";
				$footer .= "Todos los derechos reservados."."\r\n";
			}
			return $footer;
		}

		public function cancion($lyrics=''){
		// Parsea el texto y separa lyrics de acordes
			$lyrics = preg_replace('/\t*/','',$lyrics); #limpia tabulaciones 
			$lineas = explode("\n", $lyrics); #Separa cada linea		
			$y=0;
			foreach ($lineas as $linea) {
				$linea = str_replace(' ',$this->espacio,$linea); #Reemplaza espacios
				$fragmento = explode("[", $linea); #detecta el acorde
				foreach($fragmento as $acorde){
					if($acorde){
						preg_match('/^(.*)\](.*)$/', $acorde, $elemento); #se extrae acorde;
						if(!$elemento){
						// Linea inicia sin acorde
							$this->cifrado[$y][]= array('lyrics'=>$acorde, 'tab'=>false);							
						}else{
						// Linea inicia con acorde
							$this->tabs[] 		= $elemento[1]; #envia acorde
							$this->cifrado[$y][]= array('lyrics'=>$elemento[2], 'tab'=>$elemento[1]);
							unset($box);
						}
					}
				}
				$y++;
			}
			$this->lyrics[] = array('title' => $this->titulo,  'content' => $this->cifrado);
		}

		public function txt($center=false){
		// Construye contenido sin formato para TXT
			$txt = $this->header();
			$center = ($center)?'text-align:center;':'';
			foreach($this->lyrics as $lyric){				
				foreach($lyric['content'] as $line){
					foreach($line as $sections){
						$txt .= str_pad($sections['tab'], strlen($sections['lyrics']));
					}
					$txt .= "\n";
					foreach($line as $sections){
						$sections = str_replace($this->espacio,' ',$sections); #Regresa espacios
						$txt .= $sections['lyrics'];
					}
					$txt .= "\n";
				}
			}
			$txt .= $this->footer();
			return '<pre style="'.$center.'">'.$txt.'</pre>';
		}

		public function html($center=false) {
		// Construye tabla HTML para web
			$html  = '<div id="gitartabs">';
			$html .= $this->header(1);
			$center = ($center)?'margin-left:auto; margin-right:auto;':'';
			$html .= '<div id="gitartabs-content">';
			// Javascrit
	        $html .= '<script src="'.$this->js.'"></script>';
	        // Estilo CSS
	        $html .= '<link rel="stylesheet" type="text/css" href="'.$this->css.'">';
			foreach ($this->lyrics as $title => $lyric) {
				foreach ($lyric['content'] as $line) {					
					$html .= '<table cellpadding="0" cellspacing="40" style="'.$center.'"><tr>';
					foreach ($line as $sections) {
						$html .= '<th >'.$sections['tab'].'</th>';
					}
					$html .= '</tr><tr>';
					foreach ($line as $sections) {
						$sections = str_replace($this->espacio,'&nbsp;',$sections); #Regresa espacios html
						$html .= '<td>'.$sections['lyrics'].'</td>';
					}
					$html .= '</tr></table>';
				}
			}
			$html .= '<br/></div>';
			$html .= $this->footer(1);
			$html .= '</div>';
			return $html;
		}

		public function acordes() {
		// Detecta acordes únicos y los devuelve
			$new 	= array();
			$renew 	= array();
			$acordes = array_unique($this->tabs);
			foreach($acordes as $acorde){
				$clean=strtr($acorde, array('(' => '', ')' => ''));
				$parts = explode('-', $clean); #Separa Guiones
				$new = ($parts) ? array_merge($new, $parts) : $acorde;
			}
			foreach ($new as $n) {
				$parts = explode('/', $n); #Separa Diagonales
				$renew = ($parts) ? array_merge($renew, $parts) : $acorde;
			}
			$acordes = implode(', ', array_unique($renew));
			return $acordes;
		}

		private function dump_var($variable,$tipo=0){
			echo "<pre>";
			if(!$tipo){ print_r($variable); }else{var_dump($variable);}
			echo "</pre>";
			die();
		}
	}
}

/*O3M*/
?>