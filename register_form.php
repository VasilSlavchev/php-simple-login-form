<h1>Register :)</h1>
<p><?php if (isset($_SESSION['msg_success'])) echo $_SESSION['msg_success']; ?></p>
<form class="login-form" method="post" action="register.php">
    <p>
        <label for="username_reg">
            Username
        </label>
        <input type="text" id="username_reg" name="username_reg" value="" placeholder="Username">
    </p>
    <p>
        <label for="password_reg">
            Password
        </label>
        <input type="password" id="password_reg" name="password_reg" value="" placeholder="Password">
    </p>
    <p>
        <label for="email_reg">
            E-mail address
        </label>
        <input type="text" id="email_reg" name="email_reg" value="" placeholder="Email">
    </p>
    <p class="submit">
        <input type="submit" name="submit" value="Register">
    </p>
</form>