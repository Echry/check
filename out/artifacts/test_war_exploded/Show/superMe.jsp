<%--
  Created by IntelliJ IDEA.
  User: Ederment
  Date: 2020-10-19
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <title>搜索结果</title>
</head>
<body>

<style>

    a.button2 {
        height: 30px;
        line-height: 30px;
        padding: 0 11px;
        background: #fff;
        border: 1px #26bbdb solid;
        border-radius: 3px;
        display: inline-block;
        text-decoration: none;
        font-size: 15px;
        outline: none;
        color: #4f6b72;
    }

    inpit.button3 {
        height: 30px;
        line-height: 30px;
        padding: 0 11px;
        background: #fff;
        border: 1px #26bbdb solid;
        border-radius: 3px;
        display: inline-block;
        text-decoration: none;
        font-size: 15px;
        outline: none;
        color: #4f6b72;
    }

    a.button {
        height: 21px;
        line-height: 21px;
        padding: 0 11px;
        background: #fff;
        border: 1px #26bbdb solid;
        border-radius: 3px;
        display: inline-block;
        text-decoration: none;
        font-size: 14px;
        outline: none;
        color: #4f6b72;
    }

    table{
        text-align: center;
    }

    body {
        font: normal 11px auto;
        color: #4f6b72;
        background: #E6EAE9;
    }

    a {
        color: #c75f3e;
    }

    #mytable {
        width: 700px;
        padding: 0;
        margin: 0;
    }

    caption {
        padding: 0 0 5px 0;
        width: 700px;
        font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        text-align: right;
    }

    th {
        font: bold 15px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        color: #4f6b72;
        border-right: 1px solid #C1DAD7;
        border-bottom: 1px solid #C1DAD7;
        border-top: 1px solid #C1DAD7;
        letter-spacing: 2px;
        text-transform: uppercase;
        text-align: center;
        padding: 6px 6px 6px 12px;
        background: #CAE8EA no-repeat;
    }

    th.nobg {
        border-top: 1px solid #C1DAD7;
        border-left: 1px solid #C1DAD7;
        border-right: 1px solid #C1DAD7;
        background: none;
        padding: 6px 6px 6px 12px;
        border-bottom: 1px solid #C1DAD7;
    }

    td {
        border-right: 1px solid #C1DAD7;
        border-bottom: 1px solid #C1DAD7;
        background: #fff;
        font-size:11px;
        padding: 6px 6px 6px 12px;
        color: #4f6b72;
    }


    td.alt {
        background: #F5FAFA;
        color: #797268;
    }

    th.spec {
        border-left: 1px solid #C1DAD7;
        border-top: 0;
        background: #fff no-repeat;
        font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
    }

    th.specalt {
        border-left: 1px solid #C1DAD7;
        border-top: 0;
        background: #f5fafa no-repeat;
        font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
        color: #797268;
    }

    .round_icon{
        width: 34px;
        height: 34px;
        display: flex;
        border-radius: 50%;
        align-items: center;
        justify-content: center;
        overflow: hidden;
    }



    html>body td{ font-size:15px;}

</style>

<table border=0 cellpadding=0 cellspacing=0 style="width:100% ;height:100%">

    <tr>

        <td style="width:50%;" align="center" valign="middle"  >


            <table id="mytable" cellspacing="0" width="25%" weight="25%" style="width: 20%">


                <tr>
                    <th colspan="2" class="nobg" >管理员信息</th>
                </tr>

                <c:set var="superUser" value="${superMessage}"></c:set>
                <c:set var="picture" value="${path}"></c:set>
                <img src="/file/${path}" class="round_icon"  alt="" >

                <form action="/super" method="get" name="form1">
                    <input hidden name="operate" value="userUpdate">

                    <tr>
                        <th style="width: 50%;" scope="col" class="nobg">ID</th>
                        <td class="nobg">
                            <input type='text' text name='id' value='${superUser.id}' style= "height:28px;width: 100%;text-align: center" placeholder='用户ID' readonly>
                        </td>
                    </tr>

                    <tr>
                        <th scope="col" >名称</th>
                        <td class="nobg">
                            <input type='text' text name='name' value='${superUser.name}' style= "height:28px;width: 100%;text-align: center" placeholder='用户名称' readonly>
                        </td>
                    </tr>

                    <tr>
                        <th scope="col" >密码</th>
                        <td class="nobg">
                            <input type='text' text name='password' value='${superUser.password}' style= "height:28px;width: 100%;text-align: center" placeholder='用户密码' readonly>
                        </td>
                    </tr>

                </form>
            </table>
            <br>
            <a href="/super?operate=findAll" class="button2" style="width: 60px">返回</a>
            <a href="/upload/upload.jsp" class="button2" style="width: 60px">我的头像</a>
            <br>
            <br>
            <a href="/superLogout" style="width: 60px">退出登录</a>
        </td>
    </tr>
</table>


</body>
</html>