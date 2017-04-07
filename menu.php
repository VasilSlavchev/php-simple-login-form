<div class="header bg">
    <ul class="menu">
        <?php
            if (!empty($username)){
                print "<li class='login-details'>Welcome, "."<span class='user-logged'><b>".@$username ."</b></span>". "!" . PHP_EOL;
                print '<a href="logout.php">Logout</a></li>' . PHP_EOL;
                print "<li><a href='index.php'>Home</a></li>" . PHP_EOL;
                print "<li><a href='messages.php'>Messages</a></li>" . PHP_EOL;
            }
            else {
                print '<li><a href="index.php">Home</a></li>' . PHP_EOL;
                print '<li><a href="register.php">Registration</a></li>' . PHP_EOL;
                print "<li class='login-details'>Welcome, guest. You are not logged in.</li>" . PHP_EOL;
            }
        ?>
    </ul>
</div>