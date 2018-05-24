<%--
  Created by IntelliJ IDEA.
  User: chengaofeng5
  Date: 2018/5/15
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@include file="/WEB-INF/jsp/common/taglib.jsp" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>周边服务</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/common/unslider/dist/css/unslider.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/common/unslider/dist/css/unslider-dots.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/modules/peripheralService/index/css/common.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/modules/peripheralService/index/css/index.css">
    <script type="text/javascript" src="<%=path%>/static/jquery/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/static/common/unslider/dist/js/unslider-min.js"></script>
    <script type="text/javascript" src="<%=path%>/static/common/unslider/dist/js/jquery.event.move.js"></script>
    <script type="text/javascript" src="<%=path%>/static/common/unslider/dist/js/jquery.event.swipe.js"></script>

    <script>
        $(function () {
            //初始化轮播插件
            $('.banner').unslider({
                speed: 500,
                delay: 3000,
                nav: true,//是否启动导航图标
                dots: true,//是否显示圆点点
                arrows: false,//是否显示左右箭头
                autoplay: true //自动轮播
            });
        })
    </script>
</head>
<body>
<div class="lay-all">
    <div class="lay-top">
            <c:choose>
                <c:when test="${imgObjList.size()>0}">
                <!--轮播图-->
                <div class="banner">
                    <ul>
                    <c:set value="0" var="i"/>
                    <c:forEach items="${imgObjList}" var="imgObj">
                        <c:set value="${i+1}" var="i"/>
                        <c:if test="${not empty imgObj.picUrl}">
                            <li><a><img src="${imgObj.picUrl}"></a></li>
                        </c:if>

                    </c:forEach>
                    </ul>
                </div>
                </c:when>
                <c:otherwise>
                    <img class="img-banner" src="<%=path%>/static/images/peripheralService/banner.png">
                </c:otherwise>
            </c:choose>

        <img class="img-decoration" src="<%=path%>/static/images/peripheralService/decoration.png">
    </div>
    <%--主页菜单--%>
    <div class="lay-rest">
        <nav class="item">
            <ul class="clearfix">
                <li>
                    <a href="<%=path%>/v1/mobile/peripheralServiceMenu?menuName=宽带办理"  >
                        <img src="<%=path%>/static/images/peripheralService/menu/001@3x.png" alt=""/>
                        <p>宽带办理</p>
                    </a>
                </li>
                <li>
                    <a href="<%=path%>/v1/mobile/peripheralServiceMenu?menuName=电视缴费"  >
                        <img src="<%=path%>/static/images/peripheralService/menu/002@3x.png" alt=""/>
                        <p>电视缴费</p>
                    </a>
                </li>
                <li>
                    <a href="<%=path%>/v1/mobile/peripheralServiceMenu?menuName=信用卡办理"  >
                        <img src="<%=path%>/static/images/peripheralService/menu/003@3x.png" alt=""/>
                        <p>信用卡办理</p>
                    </a>
                </li>
                <li>
                    <a href="<%=path%>/v1/mobile/peripheralServiceMenu?menuName=共享单车" >
                        <img src="<%=path%>/static/images/peripheralService/menu/004@3x.png" alt=""/>
                        <p>共享单车</p>
                    </a>
                </li>
                <li>
                    <a href="<%=path%>/v1/mobile/peripheralServiceMenu?menuName=美食" >
                        <img src="<%=path%>/static/images/peripheralService/menu/005@3x.png" alt=""/>
                        <p>美食</p>
                    </a>
                </li>
                <li>
                    <a href="<%=path%>/v1/mobile/peripheralServiceMenu?menuName=酒店" >
                        <img src="<%=path%>/static/images/peripheralService/menu/006@3x.png" alt=""/>
                        <p>酒店</p>
                    </a>
                </li>
                <li>
                    <a href="<%=path%>/v1/mobile/peripheralServiceMenu?menuName=滴滴出行"  >
                        <img src="<%=path%>/static/images/peripheralService/menu/007@3x.png" alt=""/>
                        <p>滴滴出行</p>
                    </a>
                </li>
                <li>
                    <a href="<%=path%>/v1/mobile/peripheralServiceMenu?menuName=购物"  >
                        <img src="<%=path%>/static/images/peripheralService/menu/008@3x.png" alt=""/>
                        <p>购物</p>
                    </a>
                </li>
                <li>
                    <a href="<%=path%>/v1/mobile/peripheralServiceMenu?menuName=更多服务"  >
                        <img src="<%=path%>/static/images/peripheralService/menu/009@3x.png" alt=""/>
                        <p>更多服务</p>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>
</body>
</html>
