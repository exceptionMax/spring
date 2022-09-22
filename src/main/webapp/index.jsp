<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/3/1
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--导入函数库--%>
    <script src="js/jquery-3.3.1.js"></script>
</head>
<body>
<br><br><br>
<a href="javascript:show()">访问服务器</a>
<div id="mydiv">等待服务器返回学生集合</div>
</body>
<script type="text/javascript">
    function show() {
        $.ajax({
            url:"${pageContext.request.contextPath}/list.action",
            dataType:"json",
            type:"get",
            success:function (list) {
                //  alert(list);
                var s="";
                $.each(list,function (i,stu) {
                    //  alert(stu);
                    s+=stu.name+"----"+stu.age+"<br>";
                });
                $("#mydiv").html(s);

            }
        });
    }
</script>
</html>
