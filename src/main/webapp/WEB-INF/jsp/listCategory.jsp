<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
<div align="center">

</div>

<div style="width:100%;margin:20px auto;text-align: center">
	<table width="800px" align='center' border='1' cellspacing='2' cellpadding="10" style="background-color: aquamarine;text-align: center">
	    <tr>
	        <td>员工号</td>
	        <td>姓名</td>
	        <td>薪水</td>
	        <td>奖金</td>
	        <td>入职时间</td>
	        <td>部门号</td>
	        <td>操作</td>
	    </tr>
	    <c:forEach items="${page.content}" var="c" varStatus="st">
	        <tr>
	            <td>${c.empno}</td>
	            <td>${c.ename}</td>
	            <td>${c.salary}</td>
	            <td>${c.bonus}</td>
	            <td>${c.hiredate}</td>
	            <td>${c.deptno}</td>
				<td>
					<a href="editCategory?empno=${c.empno}">编辑</a>/
					<a href="deleteCategory?empno=${c.empno}">删除</a>
				</td>
	        </tr>
	    </c:forEach>
	    


            	    
	</table>
	<br>
	<div>
			<a href="?start=0">[首  页]</a>
            <a href="?start=${page.number-1}">[上一页]</a>
            <a href="?start=${page.number+1}">[下一页]</a>
            <a href="?start=${page.totalPages-1}">[末  页]</a>
	</div>
	<br>
	<a href="toAdd">添加</a>
</div>
