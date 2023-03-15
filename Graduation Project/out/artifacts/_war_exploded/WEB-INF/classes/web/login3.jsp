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

<body style="background-color: cornflowerblue; margin: 0;padding: 0;">
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
                        密码登录
                    </li>
                    <li>
                        扫码登录
                    </li>
                </ul>
            </div>

            <div class="login-content none">
                <div class="qr-code">
                    <ul>
                        <li>
                            <img src="img/1.jpg" alt="">
                        </li>
                        <li>
                            <div>打开<span>手机App</span> &nbsp;&nbsp;&nbsp;
                                扫描二维码
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="login-content ">
                <form action="<%=request.getContextPath()%>/user/login" method="post">
                    <ul>
                        <li>
                            <input name="username" type="text" placeholder="邮箱/书吧号/手机号码"
                                style=" background: url(img/user.png) no-repeat left;">
                        </li>
                        <li>
                            <input name="password" type="password" placeholder="密码"
                                style="background: url(img/pwd.png) no-repeat left;">
                        </li>
                        <li>
                            <input type="submit" value="登录" class="st" >
                        </li>
                    </ul>
                    <div class="fg-res">
                        <a href="javascript:">忘记密码</a>&nbsp;&nbsp;&nbsp;<a href="register.html">免费注册</a>
                    </div>
                </form>
            </div>
            <div class="login-foot">
                <a href="javascript"><img src="img/vx.png"></a>
                <a href="javascript"><img src="img/qq.jpg"></a>
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


    <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        //选项卡
        ~function () {
            var lis = document.getElementById("login-head").children[0].getElementsByTagName("li");
            var login_contents = $(".login-content");
            // console.log(login_contents);
            for (var i = 0; i < lis.length; i++) {
                var liEle = lis[i];
                liEle.index = i;
                liEle.onclick = function () {
                    for (var j = 0; j < lis.length; j++) {
                        var liLink = lis[j];
                        liLink.className = "";
                        login_contents[j].className = "login_contents show";
                    }
                    this.className = "cur-tab";
                    login_contents[this.index].className = "login_contents none";
                }
            }

        }();    
    </script>

</body>

</html>