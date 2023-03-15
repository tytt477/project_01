<%@page contentType="text/html;charset=UTF-8"%>
<%
    String msg =(String)request.getAttribute("msg");
%>
<%--<%--%>
<%--    if (msg != null){--%>
<%--//        System.out.println(msg);--%>
<%--        response.getWriter().write(msg);--%>
<%--    }--%>
<%--%>--%>
<%--<%--%>
<%--    if(msg!=null){--%>

<%--%>--%>
<%--<script>--%>
<%--    function alert()--%>
<%--    {--%>
<%--        window.alert("用户名或密码错误！");--%>
<%--    }--%>
<%--</script>--%>

<%--<%--%>
<%--    }--%>
<%--%>--%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="搜狐,门户网站,新媒体" />
    <title>欢迎登录</title>

    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />

</head>
<body style="background-image: url(img/login_bj2.jpg);background-size: 100% auto;background-repeat: no-repeat;">
    <!--head-->
    <div>
        <div class="head">
            <img src="img/logo3.png" alt="">
        </div>
    </div>

    <!--body-->
    <div>
        <div class="login">
            <div id="login-head" class="login-head">
                <ul>
                    <li class="cur-tab">
                        登录
                    </li>
                </ul>
            </div>

            <div class="login-content ">
                <form  action="<%=request.getContextPath()%>/user/login" method="post">
                    <ul>
                        <li>
                            <input  name="username" type="text" placeholder="邮箱/用户名"
                                style=" background: url(img/user.png) no-repeat left;">
                        </li>
                        <li>
                            <input name="password" type="password" placeholder="密码"
                                style="background: url(img/pwd.png) no-repeat left;">
                        </li>
						<div class="fg-res">
						    <a href="javascript:">忘记密码</a>
						    <a href="register.jsp" >立即注册</a>
						</div>
                        <li>
                            <input type="submit" value="登录" class="st">
                        </li>
                    </ul>
                    
                </form>
            </div>
        </div>
    </div>




    <!--footer-->
    <div class="footer_bottom_down" style="position: fixed;bottom: 0;">
        <ul>
            <li><a href="#">联系我们</a></li>
            <li><a href="#">联系客服</a></li>
            <li><a href="#">商家入驻</a></li>
            <li><a href="#">营销中心</a></li>
            <li><a href="#">好书优购</a></li>
            <li><a href="#">友情链接</a></li>
            <li><a href="#">销售联盟</a></li>
            <li><a href="#">品牌社区</a></li>
            <li><a href="#">品牌公益</a></li>
            <li><a href="#">English Site</a></li>
            <li><a href="#">Contact U</a></li>
        </ul>
        <br>
        <section class="address_tel_email">地址：浙江省杭州市钱塘新区白杨街道玉屏洲 邮编：100000 电话：400-XXX-4000 传真：010-xxxxxxx 邮箱:
            123456@qq.com</section>
        <p class="address_tel_email">京ICP备08001421号京公网安备110108007702</p>
    </div>

</body>

</html>