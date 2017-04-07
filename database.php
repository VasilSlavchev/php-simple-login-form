<?php

    //database info
    $hostname="localhost";
    $mysql_login="root";
    $mysql_password="";
    $database="login";

    if (!($db = mysql_connect($hostname, $mysql_login , $mysql_password))){
        die("<center><i>Cannot conect to hostname: '".$hostname."</i></center>");
    }
    else {
            if (!(mysql_select_db($database, $db)))  {
            die("<center><i>Cannot conect to database: '".$database."</i></center>");
        }
    }
    // echo "<center><i>Connected to database.</center></i>";

    // print '<pre>';
    // var_dump($db);
    // print '</pre>';

//end.
?>