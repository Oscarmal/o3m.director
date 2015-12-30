<?php /*O3M*/
/**
* Descripción: 	Construye gráficas para usar con libreria highcharts.js (JSon)
* @author:		Oscar Maldonado - O3M
* Creación:		2015-12-18
* Modificación:	2015-12-22(O3M)
*/
// ARRAY DATA
function o3m_chart_array($data=array()){
// Construye array con datos para gráfica
	$valuesChart[global_keys] 		= array_keys($data);
	foreach ($valuesChart[global_keys] as $global_keys) {
		$rubros 					= array_keys($data[$global_keys][valores]);
		$valuesChart[categorias]  	= $data[$global_keys][categorias];
		$valuesChart[valores] 		= $data[$global_keys][valores];
		$valuesChart[totales] 		= $data[$global_keys][totales];
	}
	$y=0;
	foreach($valuesChart[valores] as $valor){
		$dataChart[valores][] = array(nombre => $rubros[$y], valores=>$valor);
		$dataChart[totales][] = array(nombre => $rubros[$y], valor=>$valuesChart[totales][$rubros[$y]]);
		$y++;
	}
	// Promedio
	foreach($dataChart[valores] as $valoresPorRubro){
		foreach($valuesChart[categorias] as $key => $mes){
			$dataChart[promedios][$key] += number_format($valoresPorRubro[valores][$key]/count($valuesChart[categorias]),2);
		}
	}
	$dataChart = array(
					 json 		=> ($data[json])?true:false
					,global_keys=> $global_keys
					,categorias => $valuesChart[categorias]
					,valores 	=> $dataChart[valores]
					,totales 	=> $dataChart[totales]
					,promedio 	=> $dataChart[promedios]
				);
	// dump_var($dataChart);
	return $dataChart;
}

// MULTIPLE - Columnas, Pastel y Linea 
function o3m_chart_column_line_pipe($data=array()){
// Crea gráfica multiple (columnas, pastel, linea)
	global $Path;
	// Colores
	#Básicos
	$basicColors = array(black=>'#333333', white=>'#ffffff', spline=>"#f7a35c",spline_border=>"#f7a35c");
	#Solidos
	$customColors = array(
						 '#7cb5ec' #Azul
						,'#434348' #Negro
						,'#90ed7d' #Verde
						,'#f7a35c' #Naranja
					);
	#Colores con degradados
	$arrGradientColors = array(
							 array('#7cb5ec','#0281F2') #Azul
							,array('#434348','#1F1F21') #Negro
							,array('#90ed7d','#1EAA00') #Verde
							,array('#f7a35c','#B35E00') #Naranja
					);
	foreach($arrGradientColors as $combo){
		#Graduales Lineales
		$gradientColors[gradient][lineal][] = array(linearGradient => array( x1=> 0, x2=> 0, y1=> 0, y2=> 1 ),
						   stops => array( array(0, $combo[0]), array(1, $combo[1]) )
						);
		#Graduales Radiales
		$gradientColors[gradient][radial][] = array(radialGradient => array( cx=> 0.5, cy=> 0.3, r=> 0.7 ),
						   stops => array( array(0, $combo[0]), array(1, $combo[1]) )
						);
	}	
	$charColors = array_merge($basicColors, $customColors, $gradientColors);
	#Titulos
	$chartTitle 	= array(text 		=> $data[titulo]);
	$chartSubTitle	= array(text 		=> $data[subtitulo]);
	$chartCredits	= array(enabled=> true, text=> date("Y-m-d H:i:s").' | ISolution.mx',href=> 'http://www.isolution.mx');
	$chartXAxis 	= array(
							 categories => $data[categorias]
							,labels 	=> array(overflow=> 'justify')
				            ,title 		=> array(text=> $data[xaxis][titulo])
						);
	$chartYAxis = array(
						 labels => array(format => '{value} '.$data[yaxis][prefijo], overflow=> 'justify')
				        ,title 	=> array(text 	=> $data[yaxis][titulo])
				   );
	$charLabels = array(items => array( #HTML labels that can be positioned anywhere in the chart area
			                	html 	=> '',
				                style 	=> array(
				                     left 	=> '50px'
				                    ,top 	=> '18px'
				                    ,color 	=> $charColors[black] 
				                )
			      		));
	$chartPlot = array(
					series=> array(
				                dataLabels=> array(
			                     	enabled 		=> $data[plot][activar],
									borderRadius 	=> 6,
									backgroundColor => '#FFFFDD',
									borderWidth 	=> 1,
									borderColor 	=> '#FED343',
									y 				=> -8
				                )		
				            )
		);
	// Datos
	#Columnas
	if($data[columnas]){
		$y=0;
		foreach ($data[columnas] as $columna) {
			$chartSeries[columnas][] = 
							 array(
					            type => 'column',
					            name => $columna[nombre],
					            data => $columna[valores],
					            color=> $charColors[gradient][lineal][$y]
				        	);
			$y++;
		}
		$chartSeriesFinal 	= $chartSeries[columnas];
	}
	#SplineLine
	if($data[spline]){
		$chartSeries[spline] = array(
				            type => 'spline',
				            name => $data[spline][nombre],
				            data => $data[spline][valores],
				            color => $charColors[spline],
				            lineWidth => 2,
				            marker => array(
				                lineWidth => 2,
				                lineColor => $charColors[spline_border],
				                fillColor => $charColors[white]
				            )
			        	);
		$chartSeriesFinal[] = $chartSeries[spline];
	}
	#Pie
	if($data[pie]){
		$y=0;
		foreach ($data[pie][datos] as $pieza) {
			$piePiezas[] = array(
				                name 	=> $pieza[nombre],
				                y 		=> $pieza[valor],
				                color 	=> $charColors[gradient][radial][$y]
				            );
			$y++;
		}
		$chartSeries[pie] = array(
					            type 		=> 'pie',
					            name 		=> $data[pie][titulo],
					            data 		=> $piePiezas,
					            center 		=> array(25, 15),
					            size 		=> 90,
					            showInLegend=> false,
					            dataLabels 	=> array(enabled => false)
				        	);
		$chartSeriesFinal[] = $chartSeries[pie];
	}   
    
	$chartData 	= array(
					title 		=> $chartTitle,
					subtitle 	=> $chartSubTitle,
			        credits		=> $chartCredits,
			        xAxis 		=> $chartXAxis,
			        yAxis 		=> $chartYAxis,
			        labels 		=> $chartLabels,
			        plotOptions => $chartPlot,
			        series 		=> $chartSeriesFinal
		);
	// dump_var($chartData);
	if(!$data[json]){
		// Construccion de HTML y Javascript (Para uso directo sin Ajax)
		$chartHTML = '<script src="'.$Path[url].'common/php/o3m.charts/highcharts.js'.'"></script>';
		$chartHTML .= '<script>$("#chart").highcharts('.json_encode($chartData).');</script>';
	}else{
		// Regresa array-objeto para construir con Javascript (Exclusivo para uso con Ajax)
		$chartHTML = $chartData;
	}
	return $chartHTML;
}
/*O3M*/
?>