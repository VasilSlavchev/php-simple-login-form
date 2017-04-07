<?php
    // inlcude database.
    include_once('database.php');

    @session_start(); //we start it again,so we can grab username, probaly a bug???
    // A session had already been started - ignoring session_start()
    // echo 'SESSION: '.$_SESSION['username'].'<br>';
    // $username = $_SESSION['username'];
    // echo 'SESSION: '.$username.'<br>';

    if (isset($_POST['post'])){

        $username_in = $username;
        $messagebox = $_POST['messagebox'];

        //we escape with htmlspecialchars.
        $messagebox = addslashes(htmlspecialchars($messagebox));
        //we esacape special characters in strings from inputs.
        $messagebox = mysql_real_escape_string($messagebox);

        // $query = "UPDATE INTO messages (message) VALUES ($messagebox)";
        $query = "INSERT INTO messages (message, username) VALUES ('$messagebox', '$username_in')";

        //TO DO: Fix for: "Warning: mysql_num_rows() expects parameter 1 to be resource, boolean given in: 26"
        $result = mysql_query($query) or die(mysql_error());
        $count = @mysql_num_rows($result);

        // if ($count == 1){
        //     echo "<center>Message is sent.</center>";
        //     header("Refresh: 1; url=index.php");
        // }

        // if ($count == 1){
        //     $_SESSION['msg_success'] = "<center>Message is not sent.</center>";
        //     echo "<center>Message is sent.</center>";
        //     // header("Refresh: 1; url=index.php");
        // }else{
        //     $_SESSION['msg_success'] = "<center>Message is not sent.</center>";
        //     echo "<center>Message is not sent.</center>";
        //     // header("Refresh: 1; url=index.php");
        // }
    }
?>
<div class="messages bg">
    <div class="login">
        <h1>Last Comments:</h1>

        <?php
            $messages_result = mysql_query("SELECT * FROM messages") or die(mysql_error());
            while($row = mysql_fetch_array($messages_result)) {
                print "<div class='message'>" . PHP_EOL;
                Print "<p>Username: ".$row['username']."</p>" . PHP_EOL;
                Print "<p>Comment: ".$row['message']."</p>" . PHP_EOL;
                Print "</div>" . PHP_EOL;
            }
        ?>

        <form class="login-form" method="post" action="index.php">
            <input type="hidden" name="post" value="1"/>
            <textarea name="messagebox" id="messagebox" placeholder="Your comment: "></textarea>
            <input type="submit" id="submit" name="submit" value="Submit">
            <p><?php if (isset($_SESSION['msg_success'])) echo $_SESSION['msg_success']; ?></p>
        </form>

    </div>
</div>