<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SISRequest Login</title>
    <!--link the bootstrap css file-->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url();?>/assets/stylesheets/style.css" type="text/css">
    <link rel="stylesheet" href="<?php echo base_url();?>/assets/stylesheets/liStyle.css" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<?php echo base_url();?>/assets/stylesheets/styleSearch.css" type="text/css">
    <script src="<?php echo base_url();?>/assets/javascripts/search.js"></script>
    <style type="text/css">
        .colbox {
            margin-left: 0px;
            margin-right: 0px;
        }
    </style>
</head>
<body>
<div class="container">
    <div id="menu">
        <div>
            <div class="nav-logo">
            </div>
        </div>
        <p"> Security Request</p>
        <ul class="menu-list">
            <li>
                <a href="<?php echo base_url('Login'); ?>" ><p class="nav-text active">Login</p></a>
            </li>
            <li>
                <a href="<?php echo base_url('Documentation'); ?>" ><p class="nav-text"">Documentation</p></a>
            </li>

        </ul>
    </div>
    <div class="row" id="login-container">
        <div class="col-lg-4 col-sm-4 well">
            <?php
            $attributes = array("class" => "form-horizontal", "id" => "loginform", "name" => "loginform");
            echo form_open("login/index", $attributes);?>
            <fieldset>
                <legend>Login</legend>
                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-lg-4 col-sm-4">
                            <label for="txt_username" class="control-label">Username</label>
                        </div>
                        <div class="col-lg-8 col-sm-8">
                            <input class="form-control" id="txt_pawprint" name="txt_pawprint" placeholder="Pawprint/SSO" type="text" value="<?php echo set_value('txt_username'); ?>" />
                            <span class="text-danger"><?php echo form_error('txt_username'); ?></span>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row colbox">
                        <div class="col-lg-4 col-sm-4">
                            <label for="txt_password" class="control-label">Password</label>
                        </div>
                        <div class="col-lg-8 col-sm-8">
                            <input class="form-control" id="txt_password" name="txt_password" placeholder="Password" type="password" value="<?php echo set_value('txt_password'); ?>" />
                            <span class="text-danger"><?php echo form_error('txt_password'); ?></span>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-12 col-sm-12 text-center">
                        <input id="btn_login" name="btn_login" type="submit" class="btn btn-default" value="Login" />
                        <input id="btn_cancel" name="btn_cancel" type="reset" class="btn btn-default" value="Cancel" />
                    </div>
                </div>
            </fieldset>
            <?php echo form_close(); ?>
            <?php echo $this->session->flashdata('msg'); ?>
        </div>
    </div>
</div>

<!--load jQuery library-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!--load bootstrap.js-->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>