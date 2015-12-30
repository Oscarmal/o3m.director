<?php
/**
* Descripción:  Construye una tabla con paginación
* @author:      Oscar Maldonado - O3M
* Creación:     2015-11-25
* Modificación: 
**/
if(!class_exists('Paginador')){
    class Paginador{
        public $por_pagina;
        public $page, $tpages, $adjacents;
        private $getvar_totalpages, $getvar_page;
        private $firstlabel, $prevlabel, $nextlabel, $lastlabel, $searchlabel;
        public $classTable;
        public $searchbox;
        private $js, $css;
        public $id_get;
        public function __construct(){
            global $Path;
            $this->por_pagina           = 5; #Resultados por página
            $this->tpages               = 1; #Total de paginas
            $this->adjacents            = 2; #Cantidad de indices de paginas a mostrar
            $this->page                 = (!$_GET['p'])?1:$_GET['p'];
            $this->id_get               = (!$_GET['id'])?false:'id='.$_GET['id'];
            $this->searchbox            = ($_GET['searchbox'])?''.$_GET['searchbox']:false;
            $this->js                   = $Path[url].'common/php/o3m.paginador/o3m.paginador.js';
            $this->css                  = $Path[url].'common/php/o3m.paginador/o3m.paginador.css';
            $this->getvar_page          = "?".$this->id_get."&searchbox=".$this->searchbox."&p="; # Variable GET
            $this->firstlabel           = '&lsaquo;&lsaquo; First';
            $this->prevlabel            = "&lsaquo; Prev";
            $this->nextlabel            = "Next &rsaquo;";
            $this->lastlabel            = "Last &rsaquo;&rsaquo;";
            $this->searchlabel          = 'Buscar...';
            $this->classTable           = 'table table-bordered';
        }

        public function paginar($arrayData=array(), $arrayHeaders=array()){
        // Imprime Tabla HTML con paginador
            $total_results  = count($arrayData);
            $total_pages    = ceil($total_results / $this->por_pagina);
            // Página actual
            $arrayPage = $this->currentPage($this->page, $total_pages, $total_results);
            // Paginador
            $this->page     = $arrayPage[current_page];
            $this->tpages   = $total_pages;
            $paginador      = ($total_pages >= 1)?$this->drawElements():'';
            $tablaHTML      = $this->drawTable($arrayData,$arrayHeaders,$paginador,$arrayPage,$total_results);
            // Resultado
            return $tablaHTML;
        }

        private function currentPage($current_page=false, $total_pages=1, $total_results=0){
        // Verifica la pagina actual
            if (isset($current_page)) {
                $result[current_page]  = $current_page;
                if ($result[current_page] > 0 && $result[current_page] <= $total_pages) {
                    $result[start]  = ($result[current_page] - 1) * $this->por_pagina;
                    $result[end]    = $result[start] + $this->por_pagina;
                } else {
                    // error - show first set of results
                    $result[start]  = 0;              
                    $result[end]    = $this->por_pagina;
                }
            } else {
                // if page isn't set, show first set of results
                $result[start]  = 0;
                $result[end]    = $this->por_pagina;
            }
            // Muestra paginación
            $result[end]    = ($result[end]>$total_results)?$total_results:$result[end];
            $result[page]   = ($result[current_page] > 1)?$result[current_page]:1;
            $result[tpages] = $total_pages;        
            return $result;
        }

        private function drawSearch(){   
            $clear = ($this->searchbox)?'<span id="search_reset" class="icon search_reset" title="Quitar filtro" ><i class="fa fa-times"></i></span>':'<span id="search_go" class="icon" title="Buscar"><i class="fa fa-search"></i></span>';                     
            $searchHTML = '
              <div class="searchbox">                  
                  <input type="search" id="searchbox" placeholder="'.$this->searchlabel.'" value="'.$this->searchbox.'" />
                  '.$clear.'
              </div>
            ';
            return $searchHTML;
        }

        private function drawElements() {
        // Crea paginador
            $page       = $this->page;
            $tpages     = $this->tpages; 
            $adjacents  = $this->adjacents;
            $reload     = '';
            // Etiquetas
            $firstlabel= $this->firstlabel;
            $prevlabel = $this->prevlabel;
            $nextlabel = $this->nextlabel;
            $lastlabel = $this->lastlabel;
            $paginadorHTML = "";            
            // Inicio de paginador
            $paginadorHTML .= '<div class="paginacion">';
            $paginadorHTML .= '<input type="hidden" id="paginacion_id_get" name="paginacion_id_get" value="'.$this->id_get.'">';
            $paginadorHTML .= $this->drawSearch();
            $paginadorHTML .= '<ul>';
            // Primero
            $paginadorHTML .= "<li><a href='".$this->getvar_page."1'>".$firstlabel."</a></li>";
            // Anterior
            if($this->page <= 1){
                $paginadorHTML .= "<span>".$prevlabel."</span>";        
            } elseif($page == 2){
                $paginadorHTML .="<li><a href='".$this->getvar_page."1'>".$prevlabel."</a></li>";
            } else{
                $paginadorHTML .="<li><a href='".$reload.$this->getvar_page.($page - 1)."'>".$prevlabel."</a></li>";
            }
            // Paginas
            $pmin=($page>$adjacents)?($page - $adjacents):1;
            $pmax=($page<($tpages - $adjacents))?($page + $adjacents):$tpages;
            for($i = $pmin; $i <= $pmax; $i++){
                if ($i == $page) {
                    $paginadorHTML .= "<li class='active'><a href=''>".$i."</a></li>";
                }elseif ($i == 1){
                    $paginadorHTML .= "<li><a href='".$this->getvar_page."1'>".$i."</a></li>";
                }else{
                    $paginadorHTML .= "<li><a href='".$reload.$this->getvar_page.$i."'>".$i. "</a></li>";
                }
            }            
            if($page<($tpages - $adjacents)){
                $paginadorHTML .= "<a href='" . $reload.$this->getvar_page.$tpages."'>" .$tpages."</a>";
            }
            // Siguiente
            if($page < $tpages) {
                $paginadorHTML .= "<li><a href='".$reload.$this->getvar_page.($page + 1)."'>".$nextlabel."</a></li>";
            }else{
                $paginadorHTML .= "<span>".$nextlabel."</span>";
            }
            // Último
            $paginadorHTML .= "<li><a href='".$reload.$this->getvar_page.$tpages."'>".$lastlabel."</a></li>";
            // Cierre de paginador
            $paginadorHTML .= "</ul></div>";
            // Resultado
            return $paginadorHTML;
        }

        private function drawTable($arrayData=array(),$arrayHeaders=array(),$paginador=false, $arrayPage=array(), $total_results){
            global $Path;
            if($arrayData){     
                // Tabla HTML
                $tblHTML  = '<div id="grid-paginado">';
                // Javascrit
                $tblHTML .= '<script src="'.$this->js.'"></script>';
                // Estilo CSS
                $tblHTML .= '<link rel="stylesheet" type="text/css" href="'.$this->css.'">';
                // Paginador
                $tblHTML .= $paginador;                
                // Datos
                $tblHTML .= "<div class='tbl-paginada'><table class='".$this->classTable."'>";
                if($arrayData[0]){
                    $tblHTML .= '<thead><tr>';
                    foreach ($arrayHeaders as $titulo) {
                        #Titulos
                        $tblHTML .= '<th>'.$titulo.'</th>';
                    }
                    $tblHTML .= '</thead></tr>';
                    for($i=$arrayPage[start]; $i<$arrayPage[end]; $i++){
                        if($i == $total_results) break;
                        $tblHTML .= "<tr>";                        
                        foreach($arrayData[$i] as $dato){
                            #Valores
                            $tblHTML .= '<td>'.utf8_encode($dato).'</td>';
                        }                    
                        $tblHTML .= "</tr>";
                    }       
                }else{
                    $tblHTML .= '<tr><td>'.'No se encontraron registros...'.'</td></tr>';
                }
                $tblHTML .= "</table></div>";
                // Footer
                $tblHTML .= '<div class="paginadorFooter">';
                $tblHTML .= "<span>P&aacute;gina <b>".$arrayPage[page]."</b> de <b>".$arrayPage[tpages].'</b></span>';
                $tblHTML .= " :: <span>Mostrando del registro <b>".($arrayPage[start]+1).'</b> al <b>'.$arrayPage[end].'</b></span>';
                $tblHTML .= " :: <span>Total de Registros <b>".$total_results.'</b></span>';
                $tblHTML .= ($this->searchbox)?" :: <span></i>Con filtro:  <b><i>'".$this->searchbox."'</i></b>":'';
                $tblHTML .= "</div>";                
                $tblHTML .= "</div>";
                return $tblHTML;
            }else{return false;}
        }
    }
}
/*O3M*/
?>