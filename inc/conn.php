<?php
$con = mysql_connect("localhost","root","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("xannad", $con);

//echo dirname(__FILE__);
//echo getcwd();

