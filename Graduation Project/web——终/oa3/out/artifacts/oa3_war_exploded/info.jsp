<%@ page import="com.bjpowernode.oa.bean.Address" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="keywords" content="书吧,图书,网上书店" />
	<title>个人中心-书吧</title>

    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/shopping-mall-index.css">
	
</head>

<body style="background-color:rgb(254, 237, 255); ">


    <!--header-->
    <div class="zl-header">
        <div class="zl-hd w1200">
            <p class="hd-p1 f-l">
				您好,<a href="<%=request.getContextPath()%>/address/list"><%=session.getAttribute("username")%></a>&nbsp;&nbsp;&nbsp;<a href="/oa/user/exit">[退出系统]</a>
			</p>
			<p class="hd-p2 f-r">
				<a href="/oa/index.jsp">首页 </a><span>|</span>
				<a href="<%=request.getContextPath()%>/user/car">我的购物车</a><span>|</span>
				<a href="<%=request.getContextPath()%>/address/list">个人中心</a>
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
    </div>




    <div class="per_con">
		
        <div class="personal-left f-l">
            <div class="personal-l-tit">
                <h3>个人中心</h3>
            </div>
			<div id="form_r">
				<ul>
					<li class="current-li"><a>收货地址<span>></span></a></li>
				    <li class=""><a href="/oa/forget.jsp">修改密码<span>></span></a></li>
				</ul>
			</div>
            
        </div>

        <div>
            <div class="personal-r f-r">
				<div class="personal-right ">
				    <div class="personal-r-tit">
				        <h3>收货地址</h3>
				    </div>
				    <div style="padding: 20px;">
						
						<span class="add_tit">新增收货地址</span>
						
						<form action="<%=request.getContextPath()%>/address/save" method="post">
							<table>
								<tr>
									<td>收&nbsp;&nbsp;件&nbsp;人：</td>
									<td><input type="text" id="rec" name="rec"></td>
								</tr>
								<tr>
									<td>收货地址：</td>
									<td><textarea id="address" name="address" rows="2" cols="25" placeholder="请输入详细地址信息" wrap="no/off"></textarea>
										</td>
								</tr>
								<tr>
									<td>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编：</td>
									<td><input type="text" id="code" name="code"></td>
								</tr>
								<tr>
									<td>手机号码：</td>
									<td><input type="text" id="tel" name="tel"></td>
								</tr>
								<tr>
									<td></td>
									<td><input type="submit" value="保存" style="width: 60px;height: 30px;background-color: skyblue;border: 0px;border-radius: 10px;"></td>
								</tr>
							</table>
						</form>
						
						<div class="adreses">
							<table>
								<thead>
									<tr>
										<th>收件人</th>
										<th>收货地址</th>
										<th>邮编</th>
										<th>联系方式</th>
										<th>操作</th>
									</tr>
								</thead>
								<%
									List<Address> addressList =(List<Address>)request.getAttribute("addressList");
									for(Address ad:addressList){
								%>
									<tr>
										<td><%=ad.getRec()%></td>
										<td><%=ad.getAddress()%></td>
										<td><%=ad.getCode()%></td>
										<td><%=ad.getTel()%></td>
										<td><a href="javascript:" class="open_btn" onclick="show(<%=ad.getId()%>)">修改</a>
											<span>|</span>
											<a href="javascript:" onclick="del(<%=ad.getId()%>)">删除</a>
										</td>
									</tr>
								<%
									}
								%>
							</table>
						</div>
					</div>
					
				</div>
            </div>
        </div>
    </div>
	
	
<!-- 弹窗内容开始 -->
	<div id="background" class="back">
		<div id="div1" class="content">
			<div id="close">
				<div style="">编辑收货地址</div>
				<span id="close-button">×</span>
			</div>
			<div id="div2">
				<form action="" method="post" id="form" >
					<span>收&nbsp;&nbsp;件&nbsp;人：</span>
					<input type="text" id="rec_2" name="rec" ><br/>

					<span>收货地址：</span>
					<textarea id="address_2" name="address" rows="2" cols="20" placeholder="请输入详细地址信息" wrap="no/off"></textarea><br/>

					<span>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编：</span>
					<input type="text" id="code_2" name="code"><br/>

					<span>手机号码：</span>
					<td><input type="text" id="tel_2" name="tel"><br/>

						<input type="submit" value="保存" style="width: 60px;height: 30px;background-color: skyblue;border: 0px;border-radius: 10px;" id="submit">
				</form>
			</div>
		</div>
	</div>
	<!-- 弹窗内容结束 -->
	

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
	
	
	<script>

		var TB = document.getElementsByTagName('tbody')[1];
		console.log(TB)
		var form = document.getElementsByTagName('form')[1];
		var div = document.getElementById('background');
		var btn = document.getElementsByClassName('open_btn');
		var close = document.getElementById('close-button');
		function show(e) {
			form.action ="<%=request.getContextPath()%>/address/modify?id="+e
		}
	
		close.onclick = function close() {
			div.style.display = "none";
		}
	
		window.onclick = function close(e) {
			if (e.target == div) {
				div.style.display = "none";
			}
		}

		TB.onclick = function (e) {
			if(e.target.className == 'open_btn'){
				div.style.display = "block";
				form.children[1].value = e.target.parentElement.parentElement.children[0].innerText;
				form.children[4].value = e.target.parentElement.parentElement.children[1].innerText;
				form.children[7].value = e.target.parentElement.parentElement.children[2].innerText;
				form.children[10].value = e.target.parentElement.parentElement.children[3].innerText;
				// form.children[12].name = e.target.parentElement.parentElement.children[4].id;
			}
		}

		function del(id){
			var ok = window.confirm("确认删除吗？");
			// console(dno)
			if(ok){
			document.location.href = "<%=request.getContextPath()%>/address/del?id="+id;
		}
		}
	</script>
</body>

</html>