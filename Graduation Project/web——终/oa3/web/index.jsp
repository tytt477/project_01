<%@page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="书吧,图书,网上书店" />
    <title>书吧-首页</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" href="css/good.css">
    <link rel="stylesheet" href="css/base.css">

    <link rel="stylesheet" href="css/bootstrap.min-4.3.1.css">
    <script src="js/jQuery -3.2.1.js"></script>
    <script src="js/Bootstrap -4.3.1.js"></script>

    <!-- <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script> -->
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            /* float: right; */
            width: 100%;
            height: 355px;
        }
    </style>
    <%


    %>
</head>

<body style="background-color:rgb(254, 237, 255); ">

    <!--header-->
    <div class="zl-header">
        <div class="zl-hd w1200">
            <p id="index_forehead" class="hd-p1 f-l">
                <%  if(session.getAttribute("username")!=null){
                %>
                您好,<a href="<%=request.getContextPath()%>/address/list"><%=session.getAttribute("username")%></a>&nbsp;&nbsp;&nbsp;<a href="/oa/user/exit">[退出系统]</a>

                <%
                    }else{
                %>
                        <a href='login.jsp'>前往登陆</a>，没有账号？<a href="register.jsp">去注册</a>
                <%
                    }
                %>
            </p>
            <p class="hd-p2 f-r">
                <a href="/oa/index.jsp">首页 </a><span>|</span>
                <a href="<%=request.getContextPath()%>/user/car">我的购物车</a><span>|</span>
                <a href="<%=request.getContextPath()%>/address/list">个人中心</a>
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
                    <li><a href="goods.jsp">图书总览</a></li>
                    <li><a href="<%=request.getContextPath()%>/user/car">购物车</a></li>
                    <li><a href="<%=request.getContextPath()%>/address/list">个人中心</a></li>
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
                            <h4>¥<span>129.00</span></h4>
                            <p>《Python经典教程》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=专业-5" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/读物-4.png">
                            <h4>¥<span>36</span></h4>
                            <p>成语故事《滥竽充数》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=读物-4" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/名著-3.png">
                            <h4>¥<span>¥230.7</span></h4>
                            <p>《小说集》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=名著-3" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/小说-1.png">
                            <h4>¥<span>68.00</span></h4>
                            <p>《太子要出嫁》</p>
                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=小说-1" class="button orange addcar">查看详情</a>
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
                            <h4>¥<span>68.00</span></h4>
                            <p>《太子要出嫁》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=小说-1" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/小说-2.png">
                            <h4>¥<span>68.00</span></h4>
                            <p>《鬼医王妈》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=小说-2" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/小说-3.png">
                            <h4>¥<span>68.00</span></h4>
                            <p>《荒芜梦与不归人》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=小说-3" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/小说-4.png">
                            <h4>¥<span>68.00</span></h4>
                            <p>《尊者医仙》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=小说-4" class="button orange addcar">查看详情</a>
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
                            <h4>¥<span>230.7</span></h4>
                            <p>《四大名著》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=名著-1" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/名著-2.png">
                            <h4>¥<span>230.7</span></h4>
                            <p>鬼谷子</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=名著-2" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/名著-3.png">
                            <h4>¥<span>230.7</span></h4>
                            <p>《骆驼祥子》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=名著-3" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/名著-4.png">
                            <h4>¥<span>230.7</span></h4>
                            <p>《诗经》</p>

                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=名著-4" class="button orange addcar">查看详情</a>
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
                            <h4>¥<span>35.6</span></h4>
                            <p>《蜜蜂救大象》</p>
                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=读物-1" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/读物-2.png">
                            <h4>¥<span>35.6</span></h4>
                            <p>《雷锋的故事》</p>
                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=读物-2" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/读物-3.png">
                            <h4>¥<span>35.6</span></h4>
                            <p>《百问百答》</p>
                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=读物-3" class="button orange addcar">查看详情</a>
                    </div>
                    <div id="in-box" class="box">
                        <div class="info">
                            <img src="img/读物-4.png">
                            <h4>¥<span>35.6</span></h4>
                            <p>《滥竽充数》</p>
                        </div>
                        <a href="<%=request.getContextPath()%>/book/detail?pic_nm=读物-4" class="button orange addcar">查看详情</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!--底部一块-->

    <div class=".foot">
        <div>
            <div class="footer-box">

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