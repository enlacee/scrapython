<!DOCTYPE html>
<html lang="en" dir="ltr">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta name="robots" content="noindex">
<title>Export: subingleslyrics - Adminer</title>
<link rel="stylesheet" type="text/css" href="adminer.php?file=default.css&amp;version=4.1.0">
<script type="text/javascript" src="adminer.php?file=functions.js&amp;version=4.1.0"></script>
<link rel="shortcut icon" type="image/x-icon" href="adminer.php?file=favicon.ico&amp;version=4.1.0">
<link rel="apple-touch-icon" href="adminer.php?file=favicon.ico&amp;version=4.1.0">

<body class="ltr nojs" onkeydown="bodyKeydown(event);" onclick="bodyClick(event);">
<script type="text/javascript">
document.body.className = document.body.className.replace(/ nojs/, ' js');
</script>

<div id="help" class="jush-sql jsonly hidden" onmouseover="helpOpen = 1;" onmouseout="helpMouseout(this, event);"></div>

<div id="content">
<p id="breadcrumb"><a href="adminer.php">MySQL</a> &raquo; <a href='adminer.php?username=root' accesskey='1' title='Alt+Shift+1'>Server</a> &raquo; <a href="adminer.php?username=root&amp;db=subingleslyrics">subingleslyrics</a> &raquo; Export
<h2>Export: subingleslyrics</h2>

<form action="" method="post">
<table cellspacing="0">
<tr><th>Output<td><label><input type='radio' name='output' value='text' checked>open</label><label><input type='radio' name='output' value='file'>save</label><label><input type='radio' name='output' value='gz'>gzip</label>
<tr><th>Format<td><label><input type='radio' name='format' value='sql' checked>SQL</label><label><input type='radio' name='format' value='csv'>CSV,</label><label><input type='radio' name='format' value='csv;'>CSV;</label><label><input type='radio' name='format' value='tsv'>TSV</label>
<tr><th>Database<td><select name='db_style'><option><option>USE<option>DROP+CREATE<option selected>CREATE</select><label><input type='checkbox' name='routines' value='1' checked>Routines</label><label><input type='checkbox' name='events' value='1' checked>Events</label><tr><th>Tables<td><select name='table_style'><option><option selected>DROP+CREATE<option>CREATE</select><label><input type='checkbox' name='auto_increment' value='1'>Auto Increment</label><label><input type='checkbox' name='triggers' value='1' checked>Triggers</label><tr><th>Data<td><select name='data_style'><option selected><option>TRUNCATE+INSERT<option>INSERT<option>INSERT+UPDATE</select></table>
<p><input type="submit" value="Export">
<input type="hidden" name="token" value="579288:143517">

<table cellspacing="0">
<thead><tr><th style='text-align: left;'><label class='block'><input type='checkbox' id='check-tables' checked onclick='formCheck(this, /^tables\[/);'>Tables</label><th style='text-align: right;'><label class='block'>Data<input type='checkbox' id='check-data' checked onclick='formCheck(this, /^data\[/);'></label></thead>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='videos' checked onclick="checkboxClick(event, this); formUncheck(&#039;check-tables&#039;);">videos</label><td align='right'><label class='block'><span id='Rows-videos'></span><input type='checkbox' name='data[]' value='videos' checked onclick="checkboxClick(event, this); formUncheck(&#039;check-data&#039;);"></label>
<script type='text/javascript'>ajaxSetHtml('adminer.php?username=root&db=subingleslyrics&script=db');</script>
</table>
</form>
</div>

<form action="" method="post">
<p class="logout">
<input type="submit" name="logout" value="Logout" id="logout">
<input type="hidden" name="token" value="579288:143517">
</p>
</form>
<div id="menu">
<h1>
<a href='http://www.adminer.org/' target='_blank' id='h1'>Adminer</a> <span class="version">4.1.0</span>
<a href="http://www.adminer.org/#download" target="_blank" id="version"></a>
</h1>
<script type="text/javascript" src="adminer.php?file=jush.js&amp;version=4.1.0"></script>
<script type="text/javascript">
var jushLinks = { sql: [ 'adminer.php?username=root&db=subingleslyrics&table=$&', /\b(videos)\b/g ] };
jushLinks.bac = jushLinks.sql;
jushLinks.bra = jushLinks.sql;
jushLinks.sqlite_quo = jushLinks.sql;
jushLinks.mssql_bra = jushLinks.sql;
bodyLoad('5.5');
</script>
<form action="">
<p id="dbs">
<input type="hidden" name="username" value="root"><span title='database'>DB</span>: <select name='db' onmousedown='dbMouseDown(event, this);' onchange='dbChange(this);'><option value=""><option>information_schema<option>ac_gym<option>chamilo19<option>chamilo_icpna<option>chamiloutp<option>employee<option>free_mediastart<option>griddemo<option>heatmap<option>mysql<option>performance_schema<option selected>subingleslyrics<option>symfony<option>test1<option>test2<option>test_gym<option>videos<option>vlearning_icpna<option>vlearning_icpna2<option>wordpress<option>xplora-genesis2014</select><input type='submit' value='Use' class='hidden'>
<input type="hidden" name="dump" value=""></p></form>
<p class='links'><a href='adminer.php?username=root&amp;db=subingleslyrics&amp;sql='>SQL command</a>
<a href='adminer.php?username=root&amp;db=subingleslyrics&amp;import='>Import</a>
<a href='adminer.php?username=root&amp;db=subingleslyrics&amp;dump=' id='dump' class='active '>Dump</a>
<a href="adminer.php?username=root&amp;db=subingleslyrics&amp;create=">Create table</a>
<p id='tables' onmouseover='menuOver(this, event);' onmouseout='menuOut(this);'>
<a href="adminer.php?username=root&amp;db=subingleslyrics&amp;select=videos">select</a> <a href="adminer.php?username=root&amp;db=subingleslyrics&amp;table=videos" title='Show structure'>videos</a><br>
</div>
<script type="text/javascript">setupSubmitHighlight(document);</script>
