<%@page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="搜狐,门户网站,新媒体" />
    <title>个人资料-书吧</title>

    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/shopping-mall-index.css">
    <script type="text/javascript" src="js/showdate.js"></script>
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
                <a href="index.jsp">返回首页 (书吧商城)</a><span>|</span>
                <a href="car.jsp">我的购物车</a><span>|</span>
                <a href="javascript:">我的订单</a>
            </p>
            <div style="clear:both;"></div>
        </div>
    </div>

    <div class="car-head">
        <div style="float: left;">
            <div class='logo-form'>
                <span>
                    <a href="index.jsp" style="color: white;font-family: '华文琥珀', Times, serif;;">我的书吧</a>
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




    <div style="width: 1200px;height: auto;margin: 0 auto;">
        <div class="personal-left f-l">
            <div class="personal-l-tit">
                <h3>个人中心</h3>
            </div>
            <ul>
                <li ><a href="news.jsp">个人消息<span>></span></a></li>
                <li class="current-li"><a href="information.jsp">个人资料<span>></span></a></li>
                <li ><a href="javascript:">我的订单<span>></span></a></li>
                <li ><a href="car.jsp">购物车<span>></span></a></li>
                <li ><a href="/oa/address.jsp">管理收货地址<span>></span></a></li>
                <li ><a href="javascript:">购买记录<span>></span></a></li>
                <li ><a href="javascript:">浏览记录<span>></span></a></li>
            </ul>
        </div>

        <div>
            <div class="personal-r f-r">
                <div class="personal-right">
                    <div class="personal-r-tit">
                        <h3>个人资料</h3>
                    </div>
                    <div class="data-con">
                        <div class="dt1">
                            <!-- <p class="f-l">当前头像：</p>
                            <div class="touxiang f-l">
                                <div class="tu f-l">
                                    <a href="#">
                                        <img src="img/头像.gif" />
                                        <input type="file" name="" id="" class="img1" />
                                    </a>
                                </div>
                                <a href="JavaScript:;" class="sc f-l" shangchuang="">上传头像</a>
                                <div style="clear:both;"></div>
                            </div> -->
                            <div style="clear:both;"></div>
                        </div>
                        <div class="dt1">
                            <p class="dt-p f-l">用户名：</p>
                            <!-- <input type="text" placeholder="<%=session.getAttribute("username")%>" readonly/> -->
                            <div style="clear:both;"></div>
                        </div>
                        <!-- <div class="dt1">
                            <p class="dt-p f-l">书吧号：</p>
                            <input type="text" value="Bookid6018281" readonly/>
                            <div style="clear:both;"></div>
                        </div> -->
                        <div class="dt1 dt2">
                            <p class="dt-p f-l">性别：</p>
                            <div>
                                <input type="radio" name="hobby" value="male"><span>男</span>
                                <input type="radio" name="hobby" value="female"><span>女</span>
                            </div>
                            <div style="clear:both;"></div> 
                        </div>
                        <div class="dt1">
                            <p class="dt-p f-l">生日：</p>
                                <input type="text" id="time" value="选择时间" onClick="return Calendar('time');" class="text_time"/>
                            <div style="clear:both;"></div>
                        </div>
                        <div class="dt1">
                            <p class="dt-p f-l">手机号：</p>
                            <input type="text" value="12345678910" />
                            <div style="clear:both;"></div>
                        </div>
                        <div class="dt1">
                            <p class="dt-p f-l">邮箱：</p>
                            <input type="text" value="123456789@qq.com" />
                            <div style="clear:both;"></div>
                        </div>
                        <input type="submit" class="btn-pst" value="保存"></button>
                    </div>
                </div>
            </div>
            <div style="clear:both;"></div>
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
        <p class="address_tel_email">京ICP备00000000号京公网安备111111111111</p>
    </div>
</body>

</html>