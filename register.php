<?php

    //register.php
    if (isset($_SESSION['username'])){
        $username = $_SESSION['username'];
        session_destroy();
        exit;
    }
    else {
        if (isset($_POST['username_reg']) && isset($_POST['password_reg']) && isset($_POST['email_reg'])){

            //include database.
            include_once('database.php');

            $username_reg = $_POST['username_reg'];
            $password_reg = $_POST['password_reg'];
            $email = $_POST['email_reg'];

            $username_reg = htmlentities($username_reg);
            $password_reg = htmlentities($username_reg);

            // echo $username_reg.'<br>';
            // echo $password_reg.'<br>';
            $password_md5 = md5($password_reg);
            $password_sha256 = hash('sha256', $password_reg);
            // echo 'MD5: '.$password_md5.'<br>';
            // echo 'sha256: '.$password_sha256.'<br>';

            $query = "INSERT INTO `users` (username, password, email) VALUES ('$username_reg', '$password_reg', '$email')";
            $result = mysql_query($query) or die(mysql_error());
            if($result){
                $msg = "User Created Successfully." . PHP_EOL;
                $success_messages  = "Registration Successfull!" . PHP_EOL;
                $success_messages .= "Login details: ". $username_reg. ', pass: '. $password_reg . ', email: '. $email. '.' . PHP_EOL;
            }
            else {
                $error_messages = "Registration not Successfull!" . PHP_EOL;
            }
        }
    }
?>


    <?php
        require 'header.php';
        require('menu.php');
    ?>

    <div class="login bg">
        <?php
            require('register_form.php');
        ?>
    </div>

    <div class="footer bg">
        <?php
            require('footer.php');
        ?>
    </div>

</div>
</body>
</html>