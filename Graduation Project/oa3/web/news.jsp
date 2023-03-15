<%@page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="搜狐,门户网站,新媒体" />
    <title>消息中心-书吧</title>

    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/shopping-mall-index.css">
    <script type="text/javascript" src="js/car.js"></script>

</head>

<body style="background-color:rgb(254, 237, 255); ">


    <!--header-->
    <div class="zl-header">
        <div class="zl-hd w1200">
            <p class="hd-p1 f-l">
                Hi ! <a href="information.jsp"><%=session.getAttribute("username")%></a>
                <a href="/oa/user/exit">[退出系统]</a>
            </p>
            <p class="hd-p2 f-r">
                <a href="/oa/index.jsp">返回首页 (书吧商城)</a><span>|</span>
                <a href="/oa/car.jsp">我的购物车</a><span>|</span>
                <a href="javascript:">我的订单</a>
            </p>
            <div style="clear:both;"></div>
        </div>
    </div>

    <div class="car-head">
        <div style="float: left;">
            <div class='logo-form'>
                <span>
                    我的书吧
                </span>
            </div>
        </div>
        <!-- <div style="float: right;">
            <div class="input-form">
                <div>
                    <input type="text" placeholder="请输入商品名称" />
                    <button>搜索</button>
                    <div style="clear:both;"></div>
                </div>
            </div>
        </div> -->
    </div>




    <div style="width: 1200px;height: 650px;margin: 0 auto;">
        <div class="personal-left f-l">
            <div class="personal-l-tit">
                <h3>个人中心</h3>
            </div>
            <ul>
                <li class="current-li per-li1"><a href="news.jsp">个人消息<span>></span></a></li>
                <li ><a href="/oa/information.jsp">个人资料<span>></span></a></li>
                <li ><a href="/oa/javascript:">我的订单<span>></span></a></li>
                <li ><a href="/oa/car.jsp">购物车<span>></span></a></li>
                <li ><a href="/oa/address.jsp">管理收货地址<span>></span></a></li>
                <li ><a href="javascript:">购买记录<span>></span></a></li>
                <li ><a href="javascript:">浏览记录<span>></span></a></li>
            </ul>
        </div>

        <div>
            <div class="personal-r f-r">
                <div class="personal-right">
                    <div class="personal-r-tit">
                        <h3>消息中心</h3>
                    </div>
                    <div class="theme">
                        <p class="th-p1 f-l">
                            <input type="checkbox" value="" name="hobby"></input>
                            <span>选择</span>
                        </p>
                        <p class="th-p2 f-l">
                            <img src="img/th-wenjian-tu.gif" />
                        </p>
                        <p class="th-p3 f-l">主题</p>
                        <p class="th-p4 f-l">时间</p>
                    </div>
                    <div class="per-info">
                        <p class="p-top">今天（2封）</p>
                        <ul>
                            <li>
                            <input type="checkbox" value="" name="hobby"></input>

                                <p class="p-tu f-l"><img src="img/未读.gif" /></p>
                                <a href="#" class="p-font f-l">亲爱的客户，欢迎注册外贸下单网站.....</a>
                                <p class="p-time f-l" style="float: right;padding-right: 15px;">2008年8月8日</p>
                                <div style="clear:both;"></div>
                            </li>
                            <li>
                            <input type="checkbox" value="" name="hobby"></input>

                                <p class="p-tu f-l"><img src="img/未读.gif" /></p>
                                <a href="#" class="p-font p-font1 f-l">亲爱的客户，欢迎注册外贸下单网站.....</a>
                                <p class="p-time f-l" style="float: right;padding-right: 15px;">2008年8月8日</p>
                                <div style="clear:both;"></div>
                            </li>
                        </ul>
                    </div>
                    <div class="per-info">
                        <p class="p-top">上周（2封）</p>
                        <ul>
                            <li>
                            <input type="checkbox" value="" name="hobby"></input>

                                <p class="p-tu f-l"><img src="img/已读.gif" /></p>
                                <a href="#" class="p-font f-l">亲爱的客户，欢迎注册外贸下单网站.....</a>
                                <p class="p-time f-l" style="float: right;padding-right: 15px;">2008年8月8日</p>
                                <div style="clear:both;"></div>
                            </li>
                            <li>
                            <input type="checkbox" value="" name="hobby"></input>

                                <p class="p-tu f-l"><img src="img/已读.gif" /></p>
                                <a href="#" class="p-font p-font1 f-l">亲爱的客户，欢迎注册外贸下单网站.....</a>
                                <p class="p-time f-l" style="float: right;padding-right: 15px;">2008年8月8日</p>
                                <div style="clear:both;"></div>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div class="footer_bottom_down" >
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