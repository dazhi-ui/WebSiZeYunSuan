<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>四则运算在线答题</title>
</head>
<!-- background="file:///D:/新建文件夹%20(8)/com.sizeyunsuan/WebContent/images/wen.jpg" -->

<body   text="Purple"  style="background: url(images/wen.jpg); background-size:100%">
<h2>网页版四则运算自动出题系统</h2>
<form action="jiemian2.jsp" method="post"  onsubmit="return checkall()">
<table>
    <tr>
    <td>总共想要的题目个数</td>
    <td>
     <input type="text" name="number1" id="number1" value=""  placeholder="请输入"  onchange="check1()"/>
    </td>
    </tr>
    <tr>
    <td>每行想要输出的题目个数</td>
    <td><input type="text" name="number2" id="number2"  value="" placeholder="请输入" onchange="check2()" /></td>
    </tr>
    <tr>
      <td><input type="submit"  value="开始答题"></td>
  </tr>
    
</table>

</form>
<script type="text/javascript">
    
    function check1()
    {
    	var number1=document.getElementById("number1");
    	var num=number1.value;
    	if(num=="")
    	{
    		alert('总数不能为空');
		    number1.focus();
	    	return false;
    	}
    }
    
    function check2()
    {
    	var number2 = document.getElementById("number2");
    	var num2=number2.value;
    	if(num2=="")
    	{
    		alert('行数不能为空');
		    number1.focus();
	    	return false;
    	}
    }
    function checkall()
    {
    	var num1=document.getElementById("number1");
    	var number1=num1.value;
    	var num2 = document.getElementById("number2");
    	var number2=num2.value;
    	if(number1=="")
    	{
    		alert('总数不能为空');
		    num1.focus();
	    	return false;
    	}
    	if(number2=="")
    	{
    		alert('行数不能为空');
		    num2.focus();
	    	return false;
    	}
    	
    }
    </script>
</body>

</html>