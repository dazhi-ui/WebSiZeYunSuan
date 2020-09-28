<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
int w1=Integer.parseInt(request.getParameter("number1"));
int w2=Integer.parseInt(request.getParameter("number2"));
String value[]=new String[w1];
int num[]=new int[w1];
int a1,a2,a3;
int b1,b2,b3;
int w3[]=new int[100];
int w4[]=new int[100];
int w5[]=new int[100];
int w6[]=new int[100];
int w7[]=new int[100];
int w8[]=new int[100];
int w9[]=new int[100];
int w10[]=new int[100];
char wen[]= {'+','-','*','/'};
nn:for(a1=1;a1<=w1;)
{
	for(a2=1;a2<=w2;)
	{
		b1=(int)(Math.random()*100);
	    b2=(int)(Math.random()*100);
		b3=(int)(Math.random()*4);
		if(b3==0)
		{
			if(w3[b1]==1)
			{
				if(w4[b2]==1)
				{
					continue;
				}
				else
				{
					w3[b1]=1;
					w4[b2]=1;
					a3=b1+b2;
					num[a1-1]=a3;
					value[a1-1]=b1+"+"+b2;
				}
			}
			else
			{
				w3[b1]=1;
				w4[b2]=1;
				a3=b1+b2;
				num[a1-1]=a3;
				value[a1-1]=b1+"+"+b2;
			}
		}
		if(b3==1)
		{
			if(b1>=b2)
			{
				if(w5[b1]==1)
				{
					if(w6[b2]==1)
					{
						continue;
					}
					else
					{
						w5[b1]=1;
						w6[b2]=1;
						a3=b1-b2;
						num[a1-1]=a3;
						value[a1-1]=b1+"-"+b2;
					}
				}
				else
				{
					w5[b1]=1;
					w6[b2]=1;
					a3=b1-b2;
					num[a1-1]=a3;
					value[a1-1]=b1+"-"+b2;
				}
			}
			else
				continue;
		}
		if(b3==2)
		{
			if((b1*b2)/100==0)
			{
				if(w7[b1]==1)
				{
					if(w8[b2]==1)
					{
						continue;
					}
					else
					{
						w7[b1]=1;
						w8[b2]=1;
						a3=b1*b2;
						num[a1-1]=a3;
						value[a1-1]=b1+"*"+b2;
					}
				}
				else
				{
					w7[b1]=1;
					w8[b2]=1;
					a3=b1*b2;
					num[a1-1]=a3;
					value[a1-1]=b1+"*"+b2;
				}
			}
			else
				continue;
		}
		if(b3==3)
		{
			if(b2!=0&&b1%b2!=0)
			{
				continue;
			}
			if(b2==0)
			{
				continue;
			}
			if(w9[b1]==1)
			{
				if(w10[b2]==1)
				{
					continue;
				}
				else
				{
					w9[b1]=1;
					w10[b2]=1;
					a3=b1/b2;
					num[a1-1]=a3;
					value[a1-1]=b1+"/"+b2;
				}
			}
			else
			{
				w9[b1]=1;
				w10[b2]=1;
				a3=b1/b2;
				num[a1-1]=a3;
				value[a1-1]=b1+"/"+b2;
			}
		}
		if(a1==w1)
		{
			break nn;
		}
		++a1;
		++a2;
	}
}
%>
<title>Insert title here</title>
</head>
<body    style="background: url(images/wen.jpg) ;background-size:100%">
<form action="jiemian3.jsp">
<h2>所有的题目如下</h2>
<table>
  <%
    mm:for(int j=0;j<w1;){
     %>
     <tr>
     <%for(int j1=0;j1<w2;)
    	 {%>

   <td><%=value[j] %>=</td>
   <td><input type="hidden" name="values" value=<%=value[j]%>></td>
   <td><input type="text" name="result" value=""></td>
   <td><input type="hidden" name="answer" value=<%=num[j] %>></td>
  <% 
  j++;
  j1++;
  if(j==w1)
	  {
	  break mm;
	  }
	  }
    %>
    </tr>
  <% 
    }
    %>
    <tr>
    <td>
    <input type="submit" value="提交所做的答案">
    </td>
    </tr>
    </table>
 </form>
</body>
</html>