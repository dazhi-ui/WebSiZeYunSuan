<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  text="Yellow"  style="background: url(images/wen1.jpg); background-size:100%">
<div align="center">
<%
String result[] = request.getParameterValues("result");
String sum[] = request.getParameterValues("answer");
String values[] = request.getParameterValues("values");
int q1=sum.length;
int s1=0,s2=0,s3=0;
for(int q3=0;q3<q1;q3++)
{
	if(result[q3].equals(""))
	{
		s1++;
		%>
		<p><%=values[q3]%>=<%=result[q3]  %>没有填写,正确答案为<%=sum[q3] %></p>
		<%
	}
	
	else if(result[q3].equals(sum[q3]))
	{
		s2++;
		%>
		<p><%=values[q3]%>=<%=result[q3]  %>答案正确</p>
		<%
	}
	else 
	{
		s3++;
		%>
		<p><%=values[q3]%>=<%=result[q3]  %>答案错误，正确答案为<%=sum[q3] %></p>
		<%
	}
}
%>

<h2>
   你答对了<%=s2   %>题，答错了<%=s3  %>题,没有答<%=s1  %>题。
</h2>
<a href="jiemian1.jsp"><button>继续作答新的题目</button></a>
  <a href="jiemian4.jsp"><button>结束做题</button></a>
  </div>
</body>
</html>