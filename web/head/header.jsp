<%--
  Created by IntelliJ IDEA.
  User: wzh82
  Date: 2019/4/8
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/style.css">
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="<%=request.getContextPath()%>/index.jsp">二货商城</a></li>
                <li>|</li>
                <li><a href="http://www.4399.com/" target="_blank">4399小游戏</a></li>
                <li>|</li>
                <li><a href="http://www.mi.com" target="_blank">小米手机</a></li>
                <li>|</li>
                <li><a href="">云服务</a></li>
                <li>|</li>
                <li><a href="">金融</a></li>
                <li>|</li>
                <li><a href="">问题反馈</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <c:if test="${sessionScope.username==null}">
                <div class="fr">
                    <ul>
                        <li><a href="<%=request.getContextPath()%>/foreground/login.jsp">登录</a></li>
                        <li>|</li>
                        <li><a href="<%=request.getContextPath()%>/foreground/register.jsp">注册</a></li>
                        <li>|</li>
                        <div class="gouwuche fr"><a href="<%=request.getContextPath()%>/foreground/login.jsp">购物车</a></div>
                    </ul>
                </div>
            </c:if>
            <c:if test="${sessionScope.username!=null}">
                <div class="fr">
                    <ul>
                        <li>欢迎您！&nbsp;${sessionScope.username}</li>
                        <li>|</li>
                        <li><a href="<%=request.getContextPath()%>/UserServlet?action=findOne&username=${sessionScope.username}">个人中心</a></li>
                        <li>|</li>
                        <li><a href="<%=request.getContextPath()%>/checkCode?action=logout">退出</a></li>
                        <li>|</li>
                        <div class="gouwuche fr"><a href="<%=request.getContextPath()%>/ShoppingCartServlet?action=findAll">购物车</a></div>
                    </ul>
                </div>
            </c:if>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<!-- start banner_x -->
<div class="banner_x center">
    <a href="<%=request.getContextPath()%>/index.jsp"><div class="logo fl"></div></a>
    <%--<a href=""><div class="ad_top fl"></div></a>--%>
    <div class="nav fl">
        <ul>
            <li><a href="<%=request.getContextPath()%>/ershouServlet?action=queryDetail">小米手机</a></li>
            <li><a href="<%=request.getContextPath()%>/foreground/liebiao.jsp">红米</a></li>
            <li><a href="<%=request.getContextPath()%>/foreground/liebiao.jsp">平板·笔记本</a></li>
            <li><a href="<%=request.getContextPath()%>/foreground/liebiao.jsp">电视</a></li>
            <li><a href="<%=request.getContextPath()%>/foreground/liebiao.jsp">盒子·影音</a></li>
            <li><a href="<%=request.getContextPath()%>/foreground/liebiao.jsp">路由器</a></li>
            <li><a href="<%=request.getContextPath()%>/foreground/liebiao.jsp">智能硬件</a></li>
            <li><a href="<%=request.getContextPath()%>/foreground/liebiao.jsp">服务</a></li>
            <li><a href="<%=request.getContextPath()%>/foreground/liebiao.jsp">社区</a></li>
        </ul>
    </div>
    <div class="search fr">
        <form action="" method="post">
            <div class="text fl">
                <input type="text" class="shuru"id="sousuo"  placeholder="考研红宝书&nbsp;现货">
            </div>
            <div class="submit fl">
                <input  onclick="search()" type="button"  class="sousuo" value="搜索"/>
            </div>
            <div class="clear"></div>
        </form>
        <div class="clear"></div>
    </div>
</div>
<script>
    function search() {
        var title=document.getElementById("sousuo").value;
        location.href="ershouServlet?action=search&title="+title;
    }
</script>