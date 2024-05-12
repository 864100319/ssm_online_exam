
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>页面已过期</title>
</head>
<body>
</body>
<jsp:include page="scripts.jsp" />
<script>
    layui.use(['layer'], function () {
        var layer = layui.layer;
        layer.msg('页面已过期，请重新登录！', {icon: 7}, function(){
            top.location.href = '${pageContext.request.contextPath}/login'
        });
    });
</script>
</html>
