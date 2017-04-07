<h1>Simple login form. :)</h1>
<p>Login: (use: test, test)</p>
<form class="login-form" method="post" action="index.php">
    <p>
        <label for="username">
            Username
        </label>
        <input type="text" id="username" name="username" value="" placeholder="Username">
    </p>
    <p>
        <label for="password">
            Password
        </label>
        <input type="password" id="password" name="password" value="" placeholder="Password">
    </p>
    <p class="remember">
        <label for="remember_me">
            Remember
        </label>
        <input type="checkbox" name="remember_me" id="remember_me">
    </p>
    <p class="submit">
        <input type="submit" name="submit" value="Submit">
    </p>
    <p><?php if (isset($_SESSION['msg_success'])) echo $_SESSION['msg_success']; ?></p>
</form>