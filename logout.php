<?php
    include_once('header.php');
?>
<?php

    ob_start();
    ob_end_flush();
    // check for sesion.
    if (isset($_SESSION)) {
        session_unset();
        $_SESSION = array();
    }
    else {
        session_unset();
        $_SESSION = array();
        echo '<p class="alerts alert-error">Session destroyed!</p>';
        echo '<p class="alerts alert-error">Logout successful!</p>';
        header("Refresh: 2; url=index.php");
    }
    // debug session variable.
    // print_r($_SESSION);

?>