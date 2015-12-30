<?php include_once('o3m.guitarTabs.class.php');
if (!$_POST['lyrics']) {
	$_POST['lyrics'] = '[Am]///A su Majestad,[(Am-G)]
[F]Bienvenido Rey, [(F-F#)]  
[G]A su Majestad, daré la [E]honra y el ho[Am]nor/// ';
}


?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<title>Lyrics and Chords PHP Class</title>
</head>

<body>

	<div id="container">
		<h1>Guitar Tabs</h1>
		<h2 class="subtitle">PHP Class Demo</h2>

		<h3>Code</h3>
		<div class="code">
			<div class="title">PHP</div>
<pre style="color:#330066; background-color:#ffffff; font-size:10pt; font-family:'Courier New';"><span style="color:#0000ff">$l</span> <span style="color:#555555">=</span> <span style="color:#ff3030">new</span> <span style="color:#d11ced">guitarTabs</span><span style="color:#555555">();</span>
<span style="color:#0000ff">$l</span><span style="color:#555555">-&gt;</span><span style="color:#d11ced">add_section</span><span style="color:#555555">(</span><span style="color:#1861a7">''</span><span style="color:#555555">,</span> <span style="color:#0000ff">$lyrics</span><span style="color:#555555">);</span>

<span style="color:#0000ff">$l</span><span style="color:#555555">-&gt;</span><span style="color:#d11ced">print_tabs</span><span style="color:#555555">();</span>

<span style="color:#0000ff">$l</span><span style="color:#555555">-&gt;</span><span style="color:#d11ced">print_fixed</span><span style="color:#555555">();</span>

<span style="color:#0000ff">$l</span><span style="color:#555555">-&gt;</span><span style="color:#d11ced">print_HTML</span><span style="color:#555555">();</span>

</pre>
		</div>

		<h3>Input</h3>
	
		<form action="" method="POST">

		<textarea name="lyrics" style="width: 100%;" rows="5"><?=$_POST['lyrics']?></textarea><br/><br/>
		<div style="text-align: right">
			<input type="submit" value="Tab me!" style="padding: 5px 10px; font-size: 12pt;"/>
		</div>
		<h3>Output</h3>

<?
	$l = new guitarTabs();
	// $l->titulo='Este es el titulo';
	$l->cancion($_POST['lyrics']);

	echo $l->header(1);
	echo '<fieldset>';
	echo '<legend>List of tabs in song</legend>';
	echo $l->acordes();
	echo '</fieldset>';
	echo '<br/>';
	echo '<fieldset>';
	echo '<legend>Fixed font output</legend>';
	echo $l->txt();
	echo '</fieldset>';
	echo '<br/>';
	echo '<fieldset>';
	echo '<legend>HTML formated output</legend>';
	echo $l->html();
	echo '</fieldset>';

?>

				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
		</form>

</body>

</html>
