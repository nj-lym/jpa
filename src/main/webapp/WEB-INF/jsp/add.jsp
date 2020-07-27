<%--
  Created by IntelliJ IDEA.
  User: lym
  Date: 2020/5/14
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html >
  <head >
    <title ></title >
  </head >
  <body >
  <form action = "addCategory" method = "post" >

姓名: 	 <input width = "200px" name = "ename" value = "${c.ename}" > <br >
薪水: 	 <input width = "200px" name = "salary" value = "${c.salary}" > <br >
奖金: 	 <input width = "200px" name = "bonus" value = "${c.bonus}" > <br >
入职时间: <input width = "200px" name = "hiredate" value = "${c.hiredate}" > <br >
部门号 :  <input width = "200px" name = "deptno" value = "${c.deptno}" > <br >

<button type = "submit" >提交</button >

</form >
  </body >
</html >
