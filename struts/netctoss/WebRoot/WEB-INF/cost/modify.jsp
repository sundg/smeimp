<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>NetCTOSS</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" />
        <script language="javascript" type="text/javascript">
        	function showDiv(){
        		var flag=${flag};
        		if(flag){
        			showResult();
        		}
        	}
            //保存结果的提示
            function showResult() {
                showResultDiv(true);
                window.setTimeout("showResultDiv(false);", 3000);
                
            }
            function showResultDiv(flag) {
                var divResult = document.getElementById("save_result_info");
                if (flag)
                    divResult.style.display = "block";
                else
                    divResult.style.display = "none";
            }

            //切换资费类型
            function feeTypeChange(type) {
                var inputArray = document.getElementById("main").getElementsByTagName("input");
                if (type == 1) {
                    inputArray[5].readonly = true;
                    inputArray[5].value = "";
                    
                    inputArray[5].className += " readonly";
                    inputArray[6].readonly = false;
                    inputArray[6].className = "width100";
                    inputArray[7].readonly = true;
                    inputArray[7].className += " readonly";
                    inputArray[7].value = "";
                }
                else if (type == 2) {
                    inputArray[5].readonly = false;
                    inputArray[5].className = "width100";
                    inputArray[6].readonly = false;
                    inputArray[6].className = "width100";
                    inputArray[7].readonly = false;
                    inputArray[7].className = "width100";
                }
                else if (type == 3) {
                    inputArray[5].readonly = true;
                    inputArray[5].value = "";
                    inputArray[5].className += " readonly";
                    inputArray[6].readonly = true;
                    inputArray[6].value = "";
                    inputArray[6].className += " readonly";
                    inputArray[7].readonly = false;
                    inputArray[7].className = "width100";
                }
                
            }
        </script>
    </head>
    <body onload="showDiv();">
        <!--Logo区域开始-->
        <div id="header">
            <img src="../images/logo.png" alt="logo" class="left"/>
            <a href="#">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">
            <ul id="menu">
                <li><a href="../index.html" class="index_off"></a></li>
                <li><a href="../role/role_list.html" class="role_off"></a></li>
                <li><a href="../admin/admin_list.html" class="admin_off"></a></li>
                <li><a href="../fee/fee_list.html" class="fee_on"></a></li>
                <li><a href="../account/account_list.html" class="account_off"></a></li>
                <li><a href="../service/service_list.html" class="service_off"></a></li>
                <li><a href="../bill/bill_list.html" class="bill_off"></a></li>
                <li><a href="../report/report_list.html" class="report_off"></a></li>
                <li><a href="../user/user_info.html" class="information_off"></a></li>
                <li><a href="../user/user_modi_pwd.html" class="password_off"></a></li>
            </ul>
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">            
            <div id="save_result_info" class="save_success">保存成功！</div>
            <s:form theme="simple" action="updatecost.action" method="post" cssClass="main_form">
                <s:textfield name="page" cssStyle="display:none"></s:textfield>
                <s:hidden page="page"></s:hidden>
                <div class="text_info clearfix"><span>资费ID：</span></div>
                <div class="input_info">
                <!--  <input type="text" name="cost.id" class="readonly" readonly value="${cost.id}" />-->
                <s:textfield cssClass="readonly" readonly="true" name="cost.id"></s:textfield>
                </div>
                <div class="text_info clearfix"><span>资费名称：</span></div>
                <div class="input_info">
                   <!--   <input type="text" name="cost.name" class="width300" value="${cost.name}"/>-->
                    <s:textfield cssClass="width300" name="cost.name"></s:textfield>
                    <span class="required">*</span>
                    <div class="validate_msg_short">50长度的字母、数字、汉字和下划线的组合</div>
                </div>
                <div class="text_info clearfix"><span>资费类型：</span></div>
                <div class="input_info fee_type">
					<s:radio list="#{'1':'包月','2':'套餐','3':'计时'}" onclick="feeTypeChange(this.value);" name="cost.costtype"></s:radio>
                </div>
                <div class="text_info clearfix"><span>基本时长：</span></div>
                <div class="input_info">
                    <s:textfield cssClass="width100" name="cost.base_duration"></s:textfield>
                    <span class="info">小时</span>
                    <span class="required">*</span>
                    <div class="validate_msg_long">1-600之间的整数</div>
                </div>
                <div class="text_info clearfix"><span>基本费用：</span></div>
                <div class="input_info">
                    <s:textfield cssClass="width100" name="cost.base_cost"></s:textfield>
                    <span class="info">元</span>
                    <span class="required">*</span>
                    <div class="validate_msg_long">0-99999.99之间的数值</div>
                </div>
                <div class="text_info clearfix"><span>单位费用：</span></div>
                <div class="input_info">
                    <s:textfield cssClass="width100" name="cost.unit_cost"></s:textfield>
                    <span class="info">元/小时</span>
                    <span class="required">*</span>
                    <div class="validate_msg_long">0-99999.99之间的数值</div>
                </div>   
                <div class="text_info clearfix"><span>资费说明：</span></div>
                <div class="input_info_high">
                    <s:textarea cssClass="width300 height70" name="cost.description"></s:textarea>
                    <div class="validate_msg_short">100长度的字母、数字、汉字和下划线的组合</div>
                </div>                    
                <div class="button_info clearfix">
                    <input type="submit" value="保存" class="btn_save" />
                    <input type="button" value="取消" class="btn_save" onclick="location.href='feelist.action?page=${page}'" />
                </div>
            </s:form>
        </div>
        <!--主要区域结束-->
        <div id="footer">
            
        </div>
    </body>
</html>
