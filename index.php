<?php
    // site ehader.
    // require 'header.php';
?>
<?php

    //session start.
    if (isset($_SESSION)) {
        print '<pre>';
        print_r($_SESSION);
        print '</pre>';
    }
    else {
        session_start();
        $error_messages = '';
        $success_messages = '';
        $_SESSION['error_messages'] = $error_messages;
        $_SESSION['success_messages'] = $success_messages;
    }

    //check session username.
    if (isset($_SESSION['username'])) {
        $success_messages = 'SESSION BEGINS: '.$_SESSION['username'].PHP_EOL;
        $username = $_SESSION['username'];
        $success_messages = 'SESSION BEGINS: '.$username.PHP_EOL;
    }
    else {
        $error_messages = 'Please log in!'.PHP_EOL;
    }

    if (isset($_SESSION['is_logged_in']) && $_SESSION['is_logged_in'] == true) {
        $success_messages = 'User is logged in: TRUE!'.PHP_EOL;
    }

    if (isset($_POST['username']) and isset($_POST['password'])){

        //include database.
        include_once('database.php');

        $username = $_POST['username'];
        $password = $_POST['password'];

        // md5 or some other
        // $password_md5 = md5($password);
        // $password_sha256 = hash('sha256', $password);

        // echo $password_md5.'<br>';
        // echo $password_sha256.'<br>';


        $query = "SELECT * FROM `users` WHERE username='$username' and password='$password'";

        $result = mysql_query($query) or die(mysql_error());
        $count = mysql_num_rows($result);

        while ($row = mysql_fetch_array($result)) {
            $username = $row['username'];
            $password = $row['password'];
            $usertype = $row['usertype'];
            // foreach($row as $rows) {
            //     echo htmlspecialchars($rows).', ' . PHP_EOL ;
            //     print_r($row).'<br>'; //all rows
            // }
        }

        if ($count == 1){
            $_SESSION['username'] = $username;
            $_SESSION['is_logged_in'] = true;
            $username = $_SESSION['username'];
            $_SESSION['usertype'] = $row['usertype'];
            $usertype = $_SESSION['usertype'];
            $_SESSION['success_messages'] = "Login successful!".PHP_EOL;
            // echo 'SESSION: '.$_SESSION['username'].'<br>';
            // echo 'SESSION: '.$username.'<br>';
        }
        else{
            $_SESSION['error_messages'] = "Wrong username or password!".PHP_EOL;
        }
    }
?>
<?php
    // in case you are logged in, we show messages.
    if (isset($_SESSION['username'])){
        // $username = $_SESSION['username'];
        include_once('header.php');
        include_once('menu.php');
        include_once('messages.php');
    }
    else{
    ?>
    <?php
        include('header.php');
        include('menu.php');
    ?>

    <div class="login bg">
        <?php
            include('login_form.php');
        ?>
    </div>

    <div class="footer bg">
        <?php
            include('footer.php');
        ?>
    </div>

    <?php
    }
?>

</div>
</body>
</html>
