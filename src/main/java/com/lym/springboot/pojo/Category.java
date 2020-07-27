package com.lym.springboot.pojo;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Date;

@Entity
@Table(name = "emp")
@Data
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "empno")
	private Integer empno;

	@Column(name = "ename")
	private String ename;

	@Column(name = "salary")
	private Double salary;

	@Column(name = "bonus")
	private Double bonus;

	@Column(name = "hiredate")
	private Date hiredate;

	@Column(name = "deptno")
	private Integer deptno;


}
