<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!-- jQuery custom content scroller -->
    <link href="/statics/css/jquery.mCustomScrollbar.min.css" rel="stylesheet"/>

    <!-- Custom Theme Style -->
    <link href="/statics/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 menu_fixed left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentellela Alela!</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile">
                    <div class="profile_pic">
                        <img src="/statics/images/img.jpg" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>欢迎,</span>
                        <h2>${loginUser.devcode}</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br/>

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>General</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-home"></i> APP账户管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="index.html">开发者账户申请</a></li>
                                    <li><a href="index2.html">个人账户维护</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-edit"></i> APP应用管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="form.html">App维护</a></li>
                                </ul>
                            </li>


                        </ul>
                    </div>


                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
                               aria-expanded="false">
                                <img src="${pageContext.request.contextPath}/statics/images/img.jpg"
                                     alt="">${loginUser.devcode}
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">

                                <li><a href="${pageContext.request.contextPath}/logout.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>


                    </ul>
                </nav>
            </div>

        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">

            <div class="x_panel">
                <div class="x_title">
                    <h2>Form Design
                        <small>different form elements</small>
                    </h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <br>
                    <form id="search-form" class="form-horizontal form-label-left input_mask" action="/list2"
                          method="get">
                        <input type="hidden" name="p" value="1">
                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称</label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" class="form-control" placeholder="软件名称" name="softwarename">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">APP状态</label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <select class="form-control" name="status">
                                        <option value="">请选择</option>
                                        <c:forEach items="${status}" var="s">
                                            <option value="${s.id}">${s.valuename}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">所属平台</label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <select class="form-control" name="flatformid">
                                        <option value="">请选择</option>
                                        <c:forEach items="${flatform}" var="f">
                                            <option value="${f.id}">${f.valuename}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">一级分类</label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <select class="form-control" name="categorylevel1" id="queryCategoryLevel1">
                                        <option value="">请选择</option>
                                        <c:forEach items="${categories}" var="c">
                                            <option value="${c.id}">${c.categoryname}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">二级分类</label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <select class="form-control" name="categorylevel2" id="queryCategoryLevel2">

                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">三级分类</label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <select class="form-control" name="categorylevel3" id="queryCategoryLevel3">

                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                            <div class="form-group">
                                <div class="col-md-3 col-sm-3 col-xs-12 text-right">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>
                                <a href="#" class="btn btn-success">新增APP</a>
                            </h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">

                            <table class="table">
                                <thead>
                                <tr>
                                    <th>软件名称
                                    </th>
                                    <th>
                                        APK名称
                                    </th>
                                    <th>
                                        软件大小(单位:M)
                                    </th>
                                    <th>
                                        所属平台
                                    </th>
                                    <th>
                                        所属分类(一级分类、二级分类、三级分类)
                                    </th>
                                    <th>
                                        状态
                                    </th>
                                    <th>
                                        下载次数
                                    </th>
                                    <th>
                                        最新版本号
                                    </th>
                                    <th style="width: 124px;"
                                    >
                                        操作
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${page.list}" var="item">
                                    <tr role="row" class="odd">
                                        <td tabindex="0" class="sorting_1">${item.softwarename}</td>
                                        <td>${item.apkname}</td>
                                        <td>${item.softwaresize}</td>
                                        <td>${item.flatformname}</td>
                                        <td>${item.cat1Name} -&gt; ${item.cat2Name} -&gt; ${item.cat3Name}</td>
                                        <td><span id="appInfoStatus58">${item.statusName}</span></td>
                                        <td>${item.downloads}</td>
                                        <td>${item.versionid}</td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-danger">点击操作</button>
                                                <button type="button" class="btn btn-danger dropdown-toggle"
                                                        data-toggle="dropdown" aria-expanded="true">
                                                    <span class="caret"></span>
                                                    <span class="sr-only">Toggle Dropdown</span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <c:if test="${ item.status !=1 && item.status !=3 }">

                                                        <c:if test="${ item.status ==5 }">
                                                            <li>
                                                                <a class="saleSwichClose" data-toggle="tooltip"
                                                                   data-placement="top"
                                                                   data-original-title="您可以点击上架来发布您的APP，市场将提供APP的下载">上架</a>
                                                            </li>
                                                        </c:if>
                                                        <c:if test="${ item.status ==4 }">
                                                            <li>
                                                                <a class="saleSwichClose" data-toggle="tooltip"
                                                                   data-placement="top"
                                                                   data-original-title="您可以点击下架来停止发布您的APP，市场将不提供APP的下载">下架</a>
                                                            </li>
                                                        </c:if>
                                                    </c:if>

                                                    <li><a class="addVersion" data-toggle="tooltip"
                                                           data-placement="top" title=""
                                                           data-original-title="新增APP版本信息">新增版本</a>
                                                    </li>
                                                    <li><a class="modifyVersion" versionid="40"
                                                           status="4" data-toggle="tooltip"
                                                           data-placement="top" title=""
                                                           data-original-title="修改APP最新版本信息">修改版本</a>
                                                    </li>
                                                    <li><a class="modifyAppInfo"
                                                           data-toggle="tooltip" data-placement="top"
                                                           data-original-title="修改APP基础信息">修改</a></li>
                                                    <li><a class="viewApp" data-toggle="tooltip"
                                                           data-placement="top"
                                                           data-original-title="查看APP基础信息以及全部版本信息">查看</a></li>
                                                    <li><a class="deleteApp" data-toggle="tooltip" data-placement="top"
                                                           data-original-title="删除APP基础信息以及全部版本信息">删除</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>

                                </c:forEach>
                                </tbody>
                            </table>
                            <ul class="pager">
                                <li><a href="javascript:turnPage(${page.prev});">上一页</a></li>
                                <li><a href="javascript:turnPage(${page.next});">下一页</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<!-- jQuery -->
<script src="/statics/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/statics/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/statics/js/fastclick.js"></script>
<!-- NProgress -->
<script src="/statics/js/nprogress.js"></script>
<!-- jQuery custom content scroller -->
<script src="/statics/js/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="/statics/js/custom.min.js"></script>
<script src="/statics/localjs/applist.js"></script>
<script>
    function turnPage(index) {
        var form = document.getElementById("search-form");
        form.p.value = index;
        form.submit();
    }
</script>
</body>
</html>