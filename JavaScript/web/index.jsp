<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/4/23
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script type="text/javascript">
        window.onload = function () {
            var btn = document.getElementById("btn");
            btn.onclick = function () {
                //四步操作
                //1.得到异步对象
                var xmlHttp = createXMLHTTPRequest();
                //2.打开与服务器的连接
                xmlHttp.open("GET", "/AServlet", true);
                //3.发送请求
                xmlHttp.send(null);//get请求没有请求体,也要给出null
                //4.给异步对象的onreadystatechange事件注册监听器
                xmlHttp.onreadystatechange = function () {//当xmlHttp的状态发生改变时执行
                    //双重判断
                    if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
                    {
                        var text = xmlHttp.responseText;
                        var h1 = document.getElementById("h1");
                        h1.innerText = text;
                    }
                }
            }
        }

        function createXMLHTTPRequest()
        {
            try
            {
                return new XMLHttpRequest();
            } catch (e)
            {
                try
                {
                    return new ActiveXObject("Msxml2.XMLHTTP");
                } catch (e)
                {
                    try
                    {
                        return new ActiveXObject("Microsoft.XMLHTTP");
                    } catch (e)
                    {
                        throw e;
                    }
                }
            }
        }
    </script>
</head>
<body>
<button id="btn">点击这里</button>
<h1 id="h1"></h1>
</body>
</html>
