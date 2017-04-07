<?php
    include_once 'header.php';
?>
<div class="messages">
<div class="login-form">
<?php

    // session_unset();
    // $_SESSION = array();

    session_start();
    require('database.php');

    //If the form is submited.
    if (isset($_POST['username']) and isset($_POST['password'])){
        //Assigning posted values to variables.
        $username = $_POST['username'];
        $password = $_POST['password'];

        //Checking the values are existing in the database or not
        $query = "SELECT * FROM `users` WHERE username='$username' and password='$password' and usertype='$usertype'";
        $query = "SELECT * FROM `users` WHERE username='$username' and password='$password'";
        $result = mysql_query($query) or die(mysql_error());
        $count = mysql_num_rows($result);

        while ($row = mysql_fetch_array($result)) {
            $username = $row['username'];
            $password = $row['password'];
            $usertype = $row['usertype'];
            echo $username;
            echo $password;
            echo $usertype;
            foreach($row as $rows) {
                echo htmlspecialchars($rows).', ' . PHP_EOL ;
                print_r($row).'<br>'; //all rows
            }
        }

        //If the posted values are equal to the database values, then session will be created for the user.
        if ($count == 1){
            $_SESSION['username'] = $username;
            $_SESSION['is_logged_in'] = true;

            // $_SESSION['usertype'] = $usertype;
            // echo $_SESSION['usertype'];
            // echo $usertype;
        }
        else {
            //If the login credentials doesn't match, he will be shown with an error message.
            echo "Invalid Login Credentials.";
        }
    }

    //If the user is logged in Greets the user with message
    if (isset($_SESSION['username'])){
        $username = $_SESSION['username'];
        echo "Hello, " . $username . "!" . PHP_EOL;
        echo "This is the Members Area." . PHP_EOL;
        echo "<a href='logout.php'>Logout</a>" . PHP_EOL;
        // TODO: get usertype...
        // $_SESSION['usertype'] = $usertype;
        // echo $_SESSION['usertype'];
        // echo $usertype;

        // debug session.
        print '<pre>';
        print_r($_SESSION);
        print '</pre>';
    }
    else {
        echo 'No post data. Please go back and login.' . PHP_EOL;
        echo "<a href='index.php'>Home</a>" . PHP_EOL;
    }

?>
</div>
</div>