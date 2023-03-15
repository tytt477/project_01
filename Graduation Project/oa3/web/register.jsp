<!-- <%@page contentType="text/html;charset=UTF-8"%> -->

<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta http-equiv="Content-Type" charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>欢迎注册</title>
    <link rel="stylesheet" href="css/register.css">

</head>

<body>
    <div class="w">
        <div class="logo"><a href="index.jsp"><img src="img/logo3.png" alt=""></a></div>
        <div class="ddd w">
            <div class="top">
                <h3>注册新用户</h3>
                <p>我有账号,去<a class="globalLoginBtn" href="login.jsp">登录</a></p>
            </div>
            <div class="middle">
                <form action="<%=request.getContextPath()%>/user/reg" method="post">
                    <ul>
                        <li>
                            <p>用户名：</p>
                            <input name="username" type="text" placeholder="输入用户名">
                            <span>*</span>
                        </li>
                        <li>
                            <p>邮&nbsp;&nbsp;&nbsp;&nbsp;箱：</p>
                            <input name="usermail" type="text" placeholder="输入邮箱">
                            <span>*</span>
                        </li>
                        <li>
                            <p>登陆密码：</p>
                            <input name="password" type="password" placeholder="输入密码">
                            <span>*</span>

                        </li>
                        <li>
                            <p>确认密码：</p>
                            <input name="confirmps" type="password" placeholder="再次输入密码">
                            <span>*</span>
                        </li>
<!-- <%--                        <li>--%>
<%--                            <input type="checkbox">--%>
<%--                            <i>注册即同意协议</i>--%>
<%--                            <a href="#">《知悉用户协议》</a>--%>
<%--                        </li>--%> -->
                        
                        <li><input type="submit" class="finish-res" value="完成注册"></li>
                    </ul>
                </form>
            </div>
        </div>
        <div class="footer_bottom_down">
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

    </div>

</body>

</html>