<!DOCTYPE html>
<html>
<head>
    <title> Simple Login Page :) </title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/styles.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
</head>
<body>
<div class="container">
<p class="alerts alert-error"><?php if (isset($error_messages)) { echo $error_messages; } ?></p>
<p class="alerts alert-success"><?php if (isset($success_messages)) { echo $success_messages; } ?></p>