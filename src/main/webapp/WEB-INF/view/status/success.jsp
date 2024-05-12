
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <jsp:include page="../commons/metas.jsp" />
    <title>提示</title>
    <jsp:include page="../commons/styles.jsp" />
</head>
<body>

<jsp:include page="../commons/scripts.jsp" />
<script>
    layui.use(['layer'], function () {
        var layer = layui.layer;
        layer.msg('${msg}', {icon: 1}, function(){
            location.href = '${pageContext.request.contextPath}/${path}'
        });
    });
</script>
</body>
</html>
