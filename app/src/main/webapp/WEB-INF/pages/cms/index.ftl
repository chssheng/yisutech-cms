<!DOCTYPE html>
<html lang="en">

<head>
    <!-- header -->
<#include "/cms/comm/header.ftl">
</head>

<body>
<script>
    with (document)with (body)with (insertBefore(createElement("script"), firstChild))setAttribute("exparams", "category=&userid=&aplus&yunid=&&trid=0bb0beaf14792012159683753e&asid=AQAAAAC/0SpY6zfgPQAAAABhLkqoX5y7LA==", id = "tb-beacon-aplus", src = (location > "https" ? "//g" : "//g") + ".alicdn.com/alilog/mlog/aplus_v2.js")
</script>
<div id="wrapper">
    <!-- menu -->
<#include "/cms/comm/menu.ftl">

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="page-header"><span style="color:darkgray; font-family:微软雅黑"> 文档库</span></h4>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <form action="${contextPath}/DocServer/repository/file/cache/upload" method="post"
                              enctype="multipart/form-data">
                            <input type="file" name="Filedata"/> <br/>
                            <input type="submit" value="上传附件"/>
                        </form>
                        <hr/>
                        <form action="${contextPath}/DocServer/repository/file/cache/commit" method="post"
                              enctype="multipart/form-data">
                            <textarea name="attachment" cols="80" rows="4"></textarea> <br/><br/>
                            <input type="submit" value="附件提交确认"/>
                        </form>
                        <hr/>
                        附件查看: http://${slingUrl}${contextPath}/DocServer/repository/fileinfo/{file-id}/last
                        <hr/>
                        附件下载: http://${slingUrl}${contextPath}/DocServer/repository/file/view/{file-id}/last/content
                    </div>
                    <!-- /.panel-body -->
                </div>
            </div>
        </div>
    </div>
    <!-- /#page-wrapper -->
</div>
<!-- footer -->
<#include "/cms/comm/footer.ftl">
<script>
    $("#but2").click(function () {
        $.ajax({
            url: "/ant/conf/queryConfig.jsonp",
            data: {
                configId: 1
            },
            type: "get",
            async: false,
            dataType: "jsonp",
            success: function (json) {
                alert(json.success);
            },
            error: function (e) {
                alert("error" + e);
            }
        });
    });
</script>

</body>
</html>
