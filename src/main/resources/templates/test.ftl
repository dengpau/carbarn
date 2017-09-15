<html>
    <head>
        <meta charset="utf-8">
        <title>这是form提交测试</title>
        <link href="https://cdn.bootcss.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <form role="form" method="post" action="/carbarn/saveUser">
                        <div class="form-group">
                            <label for="exampleInputEmail1">真名</label>
                            <input type="text" class="form-control" name="realName" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">手机号</label>
                            <input type="text" class="form-control" name="phoneNum" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">性别</label>
                            <input type="text" class="form-control" name="sex" />
                        </div>
                        <#--<div class="form-group">
                            <label for="exampleInputPassword1">Password</label><input type="password" class="form-control" id="exampleInputPassword1" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">File input</label><input type="file" id="exampleInputFile" />
                            <p class="help-block">
                                Example block-level help text here.
                            </p>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" />Check me out</label>
                        </div> -->

                        <button type="submit" class="btn btn-default">提交</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>