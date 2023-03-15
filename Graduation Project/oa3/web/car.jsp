<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="keywords" content="搜狐,门户网站,新媒体" />
    <title>购物车-书吧</title>

    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" href="css/car.css">

    <script type="text/javascript" src="js/car.js"></script>
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

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



    <!-- <div class="car-head">
        <div style="float: left;">
            <div class='logo-form'>
                <span>
                    我的书吧
                </span>
            </div>
        </div>
        <div style="float: right;">
            <div class="input-form">
                <div>
                    <input type="text" placeholder="请输入商品名称" />
                    <button>搜索</button>
                    <div style="clear:both;"></div>
                </div>
            </div>
        </div>
    </div> -->

    <!--购物车-->
    <div class="catbox">
        <table id="cartTable">
            <thead>
                <tr>
                    <th class=""><label><input class="check-all check" type="checkbox" />&nbsp;全选</label></th>
                    <th>商品</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>小计</th>
                    <th style="width: 100px;">操作</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="checkbox"><input class="check-one check" type="checkbox" /></td>
                    <td class="goods"><img src="img/名著-3.png" alt="" /><span>《骆驼祥子》</span></td>
                    <td class="price">168.8</td>
                    <td class="count"><span class="reduce"></span><input class="count-input" type="text"
                            value="1" /><span class="add">+</span></td>
                    <td class="subtotal">168.8</td>
                    <td class="operation"><span class="delete">删除</span></td>
                </tr>
                <tr>
                    <td class="checkbox"><input class="check-one check" type="checkbox" /></td>
                    <td class="goods"><img src="img/小说-2.png" alt="" /><span>《鬼医王妈》</span></td>
                    <td class="price">109</td>
                    <td class="count"><span class="reduce"></span><input class="count-input" type="text"
                            value="1" /><span class="add">+</span></td>
                    <td class="subtotal">109</td>
                    <td class="operation"><span class="delete">删除</span></td>
                </tr>
                <tr>
                    <td class="checkbox"><input class="check-one check" type="checkbox" /></td>
                    <td class="goods"><img src="img/读物-1.png" alt="" /><span>《蜜蜂救大象》</span></td>
                    <td class="price">219.9</td>
                    <td class="count"><span class="reduce"></span><input class="count-input" type="text"
                            value="1" /><span class="add">+</span></td>
                    <td class="subtotal">219.9</td>
                    <td class="operation"><span class="delete">删除</span></td>
                </tr>
                <tr>
                    <td class="checkbox"><input class="check-one check" type="checkbox" /></td>
                    <td class="goods"><img src="img/专业-5.png" alt="" /><span>《Python经典教程》</span></td>
                    <td class="price">37.1</td>
                    <td class="count"><span class="reduce"></span><input class="count-input" type="text"
                            value="1" /><span class="add">+</span></td>
                    <td class="subtotal">37.1</td>
                    <td class="operation"><span class="delete">删除</span></td>
                </tr>
            </tbody>
        </table>

        <div class="foot" id="foot">
            <label class="fl select-all"><input type="checkbox" class="check-all check" />&nbsp;全选</label>
            <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
            <div class="fr closing">结 算</div>
            <div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
            <div class="fr selected" id="selected">已选商品<span id="selectedTotal">0</span>件
            </div>
            <div class="selected-view">
                <div id="selectedViewList" class="clearfix">
                </div>
            </div>
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