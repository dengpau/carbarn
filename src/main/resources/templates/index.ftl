<!DOCTYPE html>
<html>

<#include "header.ftl">

<body>
    <div id="wrapper">
       <!-- 引入左边栏 -->
        <#include "left.ftl">

        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="index.ftl#"><i class="fa fa-bars"></i> </a>

                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <span class="m-r-sm text-muted welcome-message"><a href="index.ftl" title="返回首页"><i class="fa fa-home"></i></a>欢迎使用H+后台主题</span>
                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="index.ftl#">
                                <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">
                                <li>
                                    <a href="mailbox.html">
                                        <div>
                                            <i class="fa fa-bell fa-fw"></i> 您有16条未读消息
                                            <span class="pull-right text-muted small">4分钟前</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href="notifications.html">
                                            <strong>查看所有 </strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>


                        <li>
                            <a href="login.html">
                                <i class="fa fa-sign-out"></i> 退出
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
            <div class="wrapper wrapper-content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <span class="label label-success pull-right">月</span>
                                <h5>营业额</h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins">40 886,200</h1>
                                <small>本月营业额</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <span class="label label-info pull-right">月</span>
                                <h5>订单</h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins">275,800</h1>
                                <small>本月订单</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <span class="label label-primary pull-right">全部</span>
                                <h5>客户</h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins">106,120</h1>
                                <small>全部客户</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <span class="label label-danger pull-right">全部</span>
                                <h5>库存</h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins">80,600</h1>
                                <small>全部库存</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                              <h5>营业额（元） <font color="#00AAAA" size="4">■</font> &nbsp;&nbsp; 订单（个） <font color="#AAAAAA" size="4">■</font></h5>
                              <div class="pull-right">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-xs btn-white active">月</button>
                                    </div>
                                </div>
                            </div>
                            <div class="ibox-content">
                                <div class="row">
                                    <div class="col-lg-9">
                                      <div>
                                          <canvas id="lineChart"  height="60"></canvas>
                                      </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <ul class="stat-list">
                                            <li>
                                                <h2 class="no-margins">2,346</h2>
                                                <small>本月订单总数</small>
                                                <div class="stat-percent">48% <i class="fa fa-bolt text-navy"></i>
                                                </div>
                                                <div class="progress progress-mini">
                                                    <div style="width: 48%;" class="progress-bar"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <h2 class="no-margins ">4,422</h2>
                                                <small>本月营业额</small>
                                                <div class="stat-percent">60% <i class="fa fa-bolt text-navy"></i>
                                                </div>
                                                <div class="progress progress-mini">
                                                    <div style="width: 60%;" class="progress-bar"></div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>月营业额数据</h5>
                                        <div class="ibox-tools">
                                            <a class="collapse-link">
                                                <i class="fa fa-chevron-up"></i>
                                            </a>
                                            <a class="close-link">
                                                <i class="fa fa-times"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="ibox-content">
                                        <table class="table table-hover no-margins">
                                            <thead>
                                                <tr>
                                                    <th>月份</th>
                                                    <th>订单</th>
                                                    <th>营业额</th>
                                                    <th>比上月值</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><i class="fa fa-clock-o"></i> 2017-8</td>
                                                    <td>40</td>
                                                    <td><i class="fa fa-rmb"></i>4566</td>
                                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 24%</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-clock-o"></i> 2017-7</td>
                                                    <td>40</td>
                                                    <td><i class="fa fa-rmb"></i>4566</td>
                                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 24%</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-clock-o"></i> 2017-6</td>
                                                    <td>40</td>
                                                    <td><i class="fa fa-rmb"></i>4566</td>
                                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 24%</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-clock-o"></i> 2017-5</td>
                                                    <td>40</td>
                                                    <td><i class="fa fa-rmb"></i>4566</td>
                                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 24%</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-clock-o"></i> 2017-4</td>
                                                    <td>40</td>
                                                    <td><i class="fa fa-rmb"></i>4566</td>
                                                    <td class="text-danger"> <i class="fa fa-level-down"></i> 24%</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa fa-clock-o"></i> 2017-3</td>
                                                    <td>40</td>
                                                    <td><i class="fa fa-rmb"></i>4566</td>
                                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 24%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        <h5>最少库存信息</h5>
                                        <div class="ibox-tools">
                                            <a class="collapse-link">
                                                <i class="fa fa-chevron-up"></i>
                                            </a>
                                            <a class="close-link">
                                                <i class="fa fa-times"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="ibox-content">
                                        <ul class="todo-list m-t small-list ui-sortable">
                                            <li>
                                                <span class="m-l-xs">米其林轮胎</span>
                                                <small class="label label-primary" style="float:right"><i class="fa fa-database"></i> 5</small>
                                            </li>
                                            <li><span class="m-l-xs">全合成机油</span>
                                                <small class="label label-primary" style="float:right"><i class="fa fa-database"></i> 13</small>
                                            </li>
                                            <li>
                                                <span class="m-l-xs">刹车油</span>
                                                <small class="label label-primary" style="float:right"><i class="fa fa-database"></i> 15</small>
                                            </li>
                                            <li>
                                                <span class="m-l-xs">xxxxx</span>
                                                <small class="label label-primary" style="float:right"><i class="fa fa-database"></i> 22</small>
                                            </li>
                                            <li>
                                                <span class="m-l-xs">xxxxxxxxxx</span>
                                                <small class="label label-primary" style="float:right"><i class="fa fa-database"></i> 24</small>
                                            </li>
                                            <li>
                                                <span class="m-l-xs">xxxxxxxxxxxxxxxxxx</span>
                                                <small class="label label-primary" style="float:right"><i class="fa fa-database"></i> 31</small>
                                            </li>
                                            <li>
                                                <span class="m-l-xs">xxxxxxxxxxxxxxxxxx</span>
                                                <small class="label label-primary" style="float:right"><i class="fa fa-database"></i> 31</small>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="pull-right">
                    By：<a href="#" target="_blank">源途</a>
                </div>
                <div>
                    <strong>汽管家</strong> &copy; 2017
                </div>
            </div>
        </div>
    </div>


    <script>
        	 var labe=['08-01','08-01','08-01','08-01','08-01','08-01','08-01','08-01','08-01','08-01'];
        	 var data1=[220,440,550,500,510,550,440,390,470,500];
        	 var data2=[10,22,32,43,40,31,35,41,50,55];
            $(document).ready(function () {
                var lineData = {
                    labels: labe,
                    datasets: [
                         {
                            label: "营业额",
                            fillColor: "rgba(26,179,148,0.5)",
                            strokeColor: "rgba(26,179,148,0.7)",
                            pointColor: "rgba(26,179,148,1)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(220,220,220,1)",
                            data: data1
                        },
                        {
                            label: "订单数",
                            fillColor: "#fff",
                            strokeColor: "#AAAAAA",
                            pointColor: "#AAAAAA",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(26,179,148,1)",
                            data: data2
                        }
                    ]
                };

                var lineOptions = {
                    scaleShowGridLines: true,
                    scaleGridLineColor: "rgba(0,0,0,.05)",
                    scaleGridLineWidth: 1,
                    bezierCurve: true,
                    bezierCurveTension: 0.4,
                    pointDot: true,
                    pointDotRadius: 4,
                    pointDotStrokeWidth: 1,
                    pointHitDetectionRadius: 20,
                    datasetStroke: true,
                    datasetStrokeWidth: 2,
                    datasetFill: true,
                    responsive: true,
                };


                var ctx = document.getElementById("lineChart").getContext("2d");
                var myNewChart = new Chart(ctx).Line(lineData, lineOptions);
            });
        </script>
</body>

</html>
