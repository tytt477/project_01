<%@page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="搜狐,门户网站,新媒体" />
    <title>书吧</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" href="css/good.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            /* float: right; */
            width: 100%;
            height: 355px;
        }
    </style>
</head>

<body style="background-color:rgb(254, 237, 255); ">

    <!--header-->
    <div class="zl-header">
        <div class="zl-hd w1200">
            <p id="index_forehead" class="hd-p1 f-l">
               您好
			   <%=session.getAttribute("username")%>
				   ，欢迎来到书吧!
                <a href="/oa/user/exit">[退出系统]</a>
            </p>
            <p class="hd-p2 f-r">
                <a href="/oa/index.jsp">首页 (书吧商城)</a><span>|</span>
                <a href="/oa/car.jsp">我的购物车</a><span>|</span>
                <a href="javascript:">我的订单</a>
            </p>
            <div style="clear:both;"></div>
        </div>
    </div>


    <!-- nav下拉列表&轮播 -->
    <div class="lb">
        <div class="nav-box">
            <div class="nav-kuai w1200">
                <ul class="nav-font f-l">
                    <li><a href="index.jsp">在线商城</a></li>
                    <li><a href="goods.jsp">图书浏览</a></li>
                    <li><a href="car.jsp">购物车</a></li>
                    <li><a href="login.jsp">登录</a></li>
                    <li><a href="register.jsp">注册</a></li>
                    <li><a href="mailto:821369049@qq.com">联系我们</a></li>
                    <div style="clear:both;"></div>
                </ul>
                <div style="clear:both;"></div>
            </div>
        </div>

        <!-- 轮播图 -->
        <div class="lb-ml">
            <div id="demo" class="carousel slide container" data-ride="carousel">

                <!-- 指示符 -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                <!-- 轮播图片 -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/轮播图1.png">
                    </div>
                    <div class="carousel-item">
                        <img src="img/轮播图2.png">
                    </div>
                    <div class="carousel-item">
                        <img src="img/轮播图3.png">
                    </div>
                </div>

                <!-- 左右切换按钮 -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>

            </div>
        </div>
    </div>



    <!-- 商品 -->
    <div class="allg">

        <div class="g1">
            <!-- 商品线 -->
            <div class="g-head " style=" height: 50.9px;">

                <div class="g-head-f">
                    <div class="g-head-f-l" style=" background-color:#35363b;"> 1F 在线商城</div>
                    <div class="g-head-f-r" style="background-color: #35363b;"><a href="/oa/goods.jsp"></a></div>
                </div>
                <div class="g-line"></div>
            </div>

            <!-- 商品 -->
            <div id="main">
                <div class="demo">
                    <div class="box">
                        <div class="info">
                            <img src="img/专业-5.png">
                            <h4>¥<span>126.00</span></h4>
                            <p>《Python经典教程》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/user/detail?pic_nm=专业-5" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/读物-4.png">
                            <h4>¥<span>3799.00</span></h4>
                            <p>成语故事《滥竽充数》</p>

                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/名著-3.png">
                            <h4>¥<span>¥3999.00</span></h4>
                            <p>《小说集》</p>

                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/小说-1.png">
                            <h4>¥<span>6969.00</span></h4>
                            <p>《太子要出嫁》</p>
                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                </div>
            </div>
        </div>




        <div class="g1">
            <!-- 商品线 -->
            <div class="g-head" style=" height: 50.9px;">

                <div class="g-head-f">
                    <div class="g-head-f-l" style="background-color: rgb(34, 123, 113);">2F 小说</div>
                    <div class="g-head-f-r" style="background-color: rgb(34, 123, 113);"><a href="/oa/goods.jsp"></a>
                    </div>
                </div>
                <div class="g-line"></div>
            </div>

            <!-- 商品 -->
            <div id="main">
                <div class="demo">
                    <div class="box">
                        <div class="info">
                            <img src="img/小说-1.png">
                            <h4>¥<span>3499.00</span></h4>
                            <p>《太子要出嫁》</p>

                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/小说-2.png">
                            <h4>¥<span>3799.00</span></h4>
                            <p>《鬼医王妈》</p>

                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/小说-3.png">
                            <h4>¥<span>¥3999.00</span></h4>
                            <p>《荒芜梦与不归人》</p>

                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/小说-4.png">
                            <h4>¥<span>6969.00</span></h4>
                            <p>《尊者医仙》</p>

                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="g1">
            <!-- 商品线 -->
            <div class="g-head" style="height: 51px;">

                <div class="g-head-f">
                    <div class="g-head-f-l" style="background-color: rgb(1, 89, 82);">3F 名著</div>
                    <div class="g-head-f-r" style="background-color: rgb(1, 89, 82);"><a href="/oa/goods.jsp"></a></div>
                </div>
                <div class="g-line"></div>
            </div>

            <!-- 商品 -->
            <div id="main">
                <div class="demo">
                    <div class="box">
                        <div class="info">
                            <img src="img/名著-1.png">
                            <h4>¥<span>3499.00</span></h4>
                            <p>《四大名著》</p>

                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/名著-2.png">
                            <h4>¥<span>3799.00</span></h4>
                            <p>鬼谷子</p>

                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/名著-3.png">
                            <h4>¥<span>¥3999.00</span></h4>
                            <p>《骆驼祥子》</p>

                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/名著-4.png">
                            <h4>¥<span>6969.00</span></h4>
                            <p>《诗经》</p>

                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                </div>
            </div>
        </div>





        <div class="g1">
            <!-- 商品线 -->
            <div class="g-head" style="height: 51px;">

                <div class="g-head-f">
                    <div class="g-head-f-l" style="background-color: rgb(234, 53, 64);">4F 儿童读物</div>
                    <div class="g-head-f-r">
                    </div>
                </div>
                <div class="g-line"></div>
            </div>

            <!-- 商品 -->
            <div id="main">
                <div class="demo">
                    <div class="box">
                        <div class="info">
                            <img src="img/读物-1.png">
                            <h4>¥<span>3499.00</span></h4>
                            <p>《蜜蜂救大象》</p>
                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/读物-2.png">
                            <h4>¥<span>3799.00</span></h4>
                            <p>《雷锋的故事》</p>
                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/读物-3.png">
                            <h4>¥<span>¥3999.00</span></h4>
                            <p>《百问百答》</p>
                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/读物-4.png">
                            <h4>¥<span>6969.00</span></h4>
                            <p>《滥竽充数》</p>
                        </div>
                        <a href="#" class="button orange addcar">查看详情</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!--底部一块-->

    <div class=".foot">
        <div>
            <div class="footer-box">
                <!-- <ul class="footer-info1 w1200">
                    <li>
                        <div class="ft-tu1">
                            <a href="JavaScript:;"><img src="img/zl2-86.gif" /></a>
                        </div>
                        <h3><a href="JavaScript:;">号码保障</a></h3>
                        <P>所有会员，手机短信验证</P>
                    </li>
                    <li>
                        <div class="ft-tu1">
                            <a href="JavaScript:;"><img src="img/zl2-87.gif" /></a>
                        </div>
                        <h3><a href="JavaScript:;">6*12小时客服</a></h3>
                        <P>有任何问题随时免费资讯</P>
                    </li>
                    <li>
                        <div class="ft-tu1">
                            <a href="JavaScript:;"><img src="img/zl2-88.gif" /></a>
                        </div>
                        <h3><a href="JavaScript:;">专业专攻</a></h3>
                        <P>我们专注于电商行业信息服务</P>
                    </li>
                    <li>
                        <div class="ft-tu1">
                            <a href="JavaScript:;"><img src="img/zl2-89.gif" /></a>
                        </div>
                        <h3><a href="JavaScript:;">注册有礼</a></h3>
                        <P>随时随地注册有大礼包</P>
                    </li>
                    <li>
                        <div class="ft-tu1">
                            <a href="JavaScript:;"><img src="img/zl2-90.gif" /></a>
                        </div>
                        <h3><a href="JavaScript:;">值得信赖</a></h3>
                        <P>专业的产品，专业的团队</P>
                    </li>
                    <div style="clear:both;"></div>
                </ul>

                <div class="footer-info2 w1200">
                    <div class="ft-if2-left f-l">
                        <dl>
                            <dt><a href="javascript:">新手上路</a></dt>
                            <dd>
                                <a href="javascript:">购物流程</a>
                                <a href="javascript:">在线支付</a>
                                <a href="javascript:">投诉与建议</a>
                            </dd>
                        </dl>
                        <dl>
                            <dt><a href="javascript:">配送方式</a></dt>
                            <dd>
                                <a href="javascript:">货到付款区域</a>
                                <a href="javascript:">配送费标准</a>
                            </dd>
                        </dl>
                        <dl>
                            <dt><a href="javascript:">购物指南</a></dt>
                            <dd>
                                <a href="javascript:">订购流程</a>
                                <a href="javascript:">购物常见问题</a>
                            </dd>
                        </dl>
                        <dl>
                            <dt><a href="javascript:">售后服务</a></dt>
                            <dd>
                                <a href="javascript:">售后服务保障</a>
                                <a href="javascript:">退换货政策总则</a>
                                <a href="javascript:">自营商品退换细则</a>
                            </dd>
                        </dl>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="ft-if2-right f-r">
                        <h3>400-xxxx-223</h3>
                        <p>周一至周日 9:00-24:00</p>
                        <p>（仅收市话费）</p>
                    </div>
                    <div style="clear:both;"></div>
                </div> -->


                <div class="footer_bottom_down" style="text-align:center;">
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
                    <p class="address_tel_email">京ICP备00000000号京公网安备111111111111</p>
                </div>
            </div>
        </div>
    </div>


</body>

</html>