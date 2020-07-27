<%@ page language = "java" contentType = "text/html; charset=UTF-8"
         pageEncoding = "UTF-8" isELIgnored = "false" %>


<div style = "margin:0px auto; width:500px" >


<form action = "updateCategory" method = "post" >

员工号: 	 <input width="200px" name = "empno" value = "${c.empno}" disabled> <br >
姓名: 	 <input width="200px" name = "ename" value = "${c.ename}" > <br >
薪水: 	 <input width="200px" name = "salary" value = "${c.salary}" > <br >
奖金: 	 <input width="200px" name = "bonus" value = "${c.bonus}" > <br >
入职时间: <input width="200px" name = "hiredate" value = "${c.hiredate}" > <br >
部门号 :  <input width="200px" name = "deptno" value = "${c.deptno}" > <br >

<input name = "empno" type = "hidden" value = "${c.empno}" >
<button type = "submit" >提交</button >

</form >
</div >