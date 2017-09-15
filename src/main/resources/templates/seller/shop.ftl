<!DOCTYPE html>
<html>

<#include "../header.ftl" >

<body>
    <div id="wrapper">
        <#include "../left.ftl">


        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="../index.ftl#"><i class="fa fa-bars"></i> </a>

                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <span class="m-r-sm text-muted welcome-message"><a href="../index.ftl" title="返回首页"><i class="fa fa-home"></i></a>欢迎使用H+后台主题</span>
                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="../index.ftl#">
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

            <div class="row">
                <div class="col-lg-9">
                    <div class="">
                        <div class="ibox">
                            <div class="ibox-content">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="m-b-md">
                                            <a href="#" class="btn btn-white btn-xs pull-right" data-toggle="modal"  data-target="#myModal4" >编辑店铺</a>，
                                            <div class="modal inmodal" id="myModal4" tabindex="-1" role="dialog"  aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content animated fadeIn">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                            <h3 class="modal-title">商家信息</h3>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="ibox-content">
                                                                <form method="get" class="form-horizontal">
                                                                    <div class="form-group">
                                                                        <label class="col-sm-2 control-label">普通</label>
                                                                        <div class="col-sm-10">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                    <div class="hr-line-dashed"></div>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-2 control-label">带说明信息</label>
                                                                        <div class="col-sm-10">
                                                                            <input type="text" class="form-control"> <span class="help-block m-b-none">帮助文本，可能会超过一行，以块级元素显示</span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="hr-line-dashed"></div>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-2 control-label">密码</label>

                                                                        <div class="col-sm-10">
                                                                            <input type="password" class="form-control" name="password">
                                                                        </div>
                                                                    </div>
                                                                    <div class="hr-line-dashed"></div>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-2 control-label">提示</label>

                                                                        <div class="col-sm-10">
                                                                            <input type="text" placeholder="提示信息" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                    <div class="hr-line-dashed"></div>
                                                                    <div class="form-group">
                                                                        <label class="col-lg-2 control-label">禁用</label>

                                                                        <div class="col-lg-10">
                                                                            <input type="text" disabled="" placeholder="已被禁用" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                    <div class="hr-line-dashed"></div>


                                                                </form>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                                                            <button type="button" class="btn btn-primary">保存</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <h2>${sinfo.sellerName}</h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <dl class="dl-horizontal">

                                            <dt>店主：</dt>
                                            <dd>${sinfo.sellerBoss}</dd>
                                            <dt>联系方式：</dt>
                                            <dd>${sinfo.bossPhone}</dd>
                                            <dt>Email：</dt>
                                            <dd>${sinfo.sellerEmail !}</dd>
                                            <dt>地址：</dt>
                                            <dd>${sinfo.sellerAddr}</dd>
                                        </dl>
                                    </div>
                                    <div class="col-lg-6" id="cluster_info">
                                        <dl class="dl-horizontal">

                                            <dt>创建时间：</dt>
                                            <dd>${sinfo.sellerCreate}</dd>
                                            <dt>开通服务：</dt>
                                            <dd>${sinfo.sellerStime}</dd>
                                            <dt>服务到期：</dt>
                                            <dd>${sinfo.sellerEtime}</dd>
                                            <dt>团队成员：</dt>
                                            <dd>${sinfo.sellerNumb}人</dd>
                                        </dl>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <dl class="dl-horizontal">
                                            <dt>服务进度</dt>
                                            <dd>
                                                <div class="progress progress-striped active m-b-sm">
                                                    <div style="width: 60%;" class="progress-bar"></div>
                                                </div>
                                                <small>我们已为您服务 <strong>120天</strong></small>
                                            </dd>
                                        </dl>
                                    </div>
                                </div>
                                <div class="row m-t-sm">
                                    <div class="col-lg-12">
                                        <div class="panel blank-panel">
                                            <div class="panel-heading">
                                                <div class="panel-options">
                                                    <ul class="nav nav-tabs">
                                                        <li class=""><a href="#tab-2" data-toggle="tab">我们的营业项目</a>
                                                        </li>
                                                        <li class="pull-right"><a class="btn">
                                                            <i class="fa fa-plus"></i>
                                                        </a>
                                                      </li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="panel-body">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="tab-2">

                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th>项目标题</th>
                                                                    <th>服务价格</th>
                                                                    <th>会员价格</th>
                                                                    <th>项目内容</th>
                                                                    <th>服务状态</th>
                                                                    <th>编辑</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">在服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">暂停服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">在服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">暂停服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">在服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">在服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">在服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">在服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">在服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">在服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        精品洗车
                                                                    </td>
                                                                    <td>
                                                                        ¥30
                                                                    </td>
                                                                    <td>
                                                                        ¥15
                                                                    </td>
                                                                    <td>
                                                                        外观、车内精洗
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-primary">在服务</span>
                                                                    </td>
                                                                    <td>
                                                                      <div class="btn-group">
                                                                          <button data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">编辑 <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu">
                                                                              <li><a href="#">修改</a>
                                                                              </li>
                                                                              <li><a href="#">启用服务</a>
                                                                              </li>
                                                                              <li><a href="#">暂停服务</a>
                                                                              </li>
                                                                              <li class="divider"></li>
                                                                              <li><a href="#">删除</a>
                                                                              </li>
                                                                          </ul>
                                                                      </div>
                                                                    </td>
                                                                </tr>


                                                            </tbody>
                                                        </table>

                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="">
                      <div class="ibox-title">
                          系统公告
                      </div>
                      <div class="ibox-content">
                          <p class="text-muted"><a href="#">8月24日MQ服务升级通知</a></p>
                          <p class="text-muted"><a href="#">8月24日NAT网关产品升级通知通知通知通知通知​​​</a></p>
                          <p class="text-muted"><a href="#">8月16日售卖系统升级通知</a></p>
                          <p class="text-muted"><a href="#">(已更新）域名实名认证公告</a></p>
                          <p class="text-muted"><a href="#">8月24日MQ服务升级通知</a></p>
                      </div>
                      <div class="ibox-title">
                          新产品快报
                      </div>
                      <div class="ibox ibox-content">
                          <p class="text-muted"><a href="#">8月24日MQ服务升级通知</a></p>
                          <p class="text-muted"><a href="#">8月24日NAT网关产品升级通知通知通知通知通知​​​</a></p>
                          <p class="text-muted"><a href="#">8月16日售卖系统升级通知</a></p>
                          <p class="text-muted"><a href="#">(已更新）域名实名认证公告</a></p>
                          <p class="text-muted"><a href="#">8月24日MQ服务升级通知</a></p>
                      </div>
                      <div class="ibox-content">
                          <p class="text-muted">XX汽车管家，随时随地移动管控，更安全，更快捷</p>
                          <p class="text-muted">技术支持：合肥源途网络科技有限公司</p>
                          <p class="text-muted">Email：1270532603@qq.com</p>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
