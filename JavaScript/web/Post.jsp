<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/4/23
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
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
        
        
        window.onload=function () {
            
        }
        
    </script>
</head>
<body>
<button id="btn">点击这里</button>
<h1 id="h1"></h1>
</body>
</html>
