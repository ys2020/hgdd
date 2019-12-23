
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentellela Alela! | </title>

    <!-- Bootstrap -->
    <link href="/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/statics/css/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/statics/css/custom.min.css" rel="stylesheet">
</head>

<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form>
                    <h1>APP开发者平台</h1>
                    <div>
                        <input type="text" class="form-control" placeholder="请输入用户名" id="devCode" required="" />
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="请输入密码" id="devPassword" required="" />
                    </div>
                    <div>

                        <input class="btn btn-default submit" type="button" id="btn-login" value="登陆">
                        <input class="btn btn-success submit" type="reset" value="重填">
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <div id="error">xxxxx</div>
                        <div class="clearfix"></div>
                        <br />

                        <div>

                            <p>Â©2016 All Rights Reserved. </p>
                        </div>
                    </div>
                </form>
            </section>
        </div>

    </div>
</div>
<script src="/statics/js/jquery.min.js"></script>
<script src="/statics/localjs/login.js"></script>
</body>
</html>