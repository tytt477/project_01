<%@page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="搜狐,门户网站,新媒体" />
    <title>书吧-更多商品</title>

    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/base.css" />

</head>

<body style="background-color:rgb(254, 237, 255);">


    <!--header-->
    <div class="zl-header" style="display: block;">
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

    <div style="display: block;" class="car-head">
        <div style="float: left;">
            <div style="margin:0 0 0 400px;">
                <a href="/oa/index.jsp"><img src="img/logo3.png" alt="" width="auto" height="100px"></a>
            </div>
        </div>
        <!-- <div style="float:right;width: 1200px;">
            <div class="input-form">
                <div>
                    <input type="text" placeholder="请输入商品名称" />
                    <button>搜索</button>
                    <div style="clear:both;"></div>
                </div>
                <ul class="search-ul">
                    <li><a href="JavaScript:;">小说</a></li>
                    <li><a href="JavaScript:;">故事</a></li>
                    <li><a href="JavaScript:;">漫画</a></li>
                    <li><a href="JavaScript:;">名著</a></li>
                    <li><a href="JavaScript:;">睡前故事</a></li>
                    <li><a href="JavaScript:;">四六级</a></li>
                    <li><a href="JavaScript:;">电子书</a></li>
                    <li><a href="JavaScript:;">漫画</a></li>
                    <li><a href="JavaScript:;">名著</a></li>
                    <li><a href="JavaScript:;">睡前故事</a></li>
                    <li><a href="JavaScript:;">四六级</a></li>
                    <div style="clear:both;"></div>
                </ul>
            </div>
        </div> -->
    </div>

    <div class="good-choice">
        <table>
            <tr>
                <td class="head-td">
                    出版社：</td>
                <td><a href="javascript:">人民文学出版社</a>
                    <a href="javascript:">新华书店</a>
                    <a href="javascript:">光明日报出版社</a>
                    <a href="javascript:">新华出版社</a>
                    <a href="javascript:">中国人民大学出版社</a>
                </td>
            </tr>
            </tr>
            <tr>
                <td class="head-td">
                    地区：</td>
                <td>
                    <a href="javascript:">国内</a>
                    <a href="javascript:">国外</a>
                </td>
            </tr>
            <tr>
                <td class="head-td">
                    奖项：</td>
                <td>
                    <a href="javascript:">诺贝尔文学奖</a>
                    <a href="javascript:">耶路撒冷文学奖</a>
                    <a href="javascript:">文津图书奖</a>
                    <a href="javascript:">卡夫卡文学江</a>
                </td>
            </tr>
            <tr>
                <td class="head-td">
                    付款方式：</td>
                <td>
                    <a href="javascript:">支付宝</a>
                    <a href="javascript:">信用卡</a>
                    <a href="javascript:">储蓄卡</a>
                    <a href="javascript:">云闪付</a>
                </td>
            </tr>
        </table>


    </div>



    <div class="good-top">
        <div class="top-l">
            <button>综合↓</button>
            <button>销量↓</button>
            <button>好评↓</button>
            <button>价格↓</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" value=""></input><span>-</span>
            <input type="text" value=""></input>
            <button>确定</button>

        </div>
        <div class="top-r">
            <span>共xx+件商品</span>&nbsp;&nbsp;&nbsp;&nbsp;<span><span style="color: red;">2</span>/100页</span>
            <button>
                <</button><button>></button>
        </div>

    </div>



    <div class="goods">
        <section class="list_bd w">
            <div class="sell_list">
                <ul>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/小说-2.png" alt="">
                                <p>《鬼医王妈》小说</p>
                                <i class="press">&#165;168&nbsp;<span>&#165;269.9</span></i><br>
                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/小说-4.png" alt="">
                                <p>《尊者医仙》小说</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;68.0&nbsp;</i><br>
                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/专业-2.png" alt="">
                                <p>《Javascript高级程序设计》</p>
                                <i class="press">&#165;139&nbsp;<span>&#165;298.8</span></i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/读物-2.png" alt="">
                                <p>《雷锋的故事》儿童读物</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;35.6&nbsp;</i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/名著-2.png" alt="">
                                <p>《鬼谷子》《三十六计》名著</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;230.7&nbsp;</i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/读物-3.png" alt="">
                                <p>《百问百答》儿童读物</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;35.6&nbsp;</i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/专业-5.png" alt="">
                                <p>《Python经典教程》专业书</p>
                                <i class="press">&#165;129&nbsp;<span>&#165;159</span></i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/小说-4.png" alt="">
                                <p>《尊者医仙》小说</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;68.0&nbsp;</i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/小说-1.png" alt="">
                                <p>《太子要出嫁》小说</p>
                                <i class="press">&#165;68&nbsp;<span>&#165;69.8</span></i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/专业-3.png" alt="">
                                <p>《HTML+CSS权威指南》专业</p>
                                <i class="press">&#165;119&nbsp;<span>&#165;159</span></i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/名著-1.png" alt="">
                                <p>《朝花·祥子·城南旧事》名著</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;230.7&nbsp;</i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/读物-1.png" alt="">
                                <p>《蜜蜂救大象》儿童读物</p>
                                <i class="press">&#165;35.6&nbsp;<span>&#165;39.9</span></i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/小说-2.png" alt="">
                                <p>《鬼医王妈》小说</p>
                                <i class="press">&#165;168&nbsp;<span>&#165;269.9</span></i><br>
                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/小说-4.png" alt="">
                                <p>《尊者医仙》小说</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;68.0&nbsp;</i><br>
                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/专业-2.png" alt="">
                                <p>《Javascript高级程序设计》</p>
                                <i class="press">&#165;139&nbsp;<span>&#165;298.8</span></i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/读物-2.png" alt="">
                                <p>《雷锋的故事》儿童读物</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;35.6&nbsp;</i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/名著-2.png" alt="">
                                <p>《鬼谷子》《三十六计》名著</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;230.7&nbsp;</i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/读物-3.png" alt="">
                                <p>《百问百答》儿童读物</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;35.6&nbsp;</i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/专业-5.png" alt="">
                                <p>《Python经典教程》专业书</p>
                                <i class="press">&#165;129&nbsp;<span>&#165;159</span></i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/小说-4.png" alt="">
                                <p>《尊者医仙》小说</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;68.0&nbsp;</i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/小说-1.png" alt="">
                                <p>《太子要出嫁》小说</p>
                                <i class="press">&#165;68&nbsp;<span>&#165;69.8</span></i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/专业-3.png" alt="">
                                <p>《HTML+CSS权威指南》专业</p>
                                <i class="press">&#165;119&nbsp;<span>&#165;159</span></i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/名著-1.png" alt="">
                                <p>《朝花·祥子·城南旧事》名著</p>
                                <i class="press">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&#165;230.7&nbsp;</i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                    <li>
                        <em>
                            <a href="">
                                <img src="img/读物-1.png" alt="">
                                <p>《蜜蜂救大象》儿童读物</p>
                                <i class="press">&#165;35.6&nbsp;<span>&#165;39.9</span></i><br>

                                <p>书吧旗舰店</p>
                                <p>1000+评论</p>
                            </a>
                        </em>
                    </li>
                </ul>

            </div>
        </section>


        <div class="paging">
            <div class="pag-left f-l">
                <a href="#" class="about left-r f-l">
                    < </a>
                        <ul class="left-m f-l">
                            <li><a href="#">1</a></li>
                            <li class="current"><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">...</a></li>
                            <li><a href="#">100</a></li>
                            <div style="clear:both;"></div>
                        </ul>
                        <a href="#" class="about left-l f-l">></a>
                        <div style="clear:both;"></div>
            </div>
            <div class="pag-right f-l">
                <div class="jump-page f-l">
                    到第<input type="text" />页
                </div>
                <button class="f-l">确定</button>
                <div style="clear:both;"></div>
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
        <p class="address_tel_email">京ICP备08001421号京公网安备110108007702</p>
    </div>
</body>

</html>