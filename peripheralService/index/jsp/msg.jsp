<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title></title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/modules/peripheralService/index/css/common.css">
    <script type="text/javascript" src="<%=path%>/static/jquery/jquery.min.js"></script>
    <script>
        function loadPage() {
            $("#main").show();
        }
    </script>
</head>
<body text=#000000 bgColor="#ffffff" leftMargin=0 topMargin=0
      onload="loadPage();">
<div id="main" data-role="content" style="display: none;">
    <div class='cost_content'>
        ${msg}
    </div>
    <br/>
</div>

</body>
</html>