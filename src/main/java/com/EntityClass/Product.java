package com.EntityClass;
import Connection.*;

public class Product{

private int pid;
private String pname;
private int p_price;
public static int p_quantity = 6;

public void setPid(int pid) {
	this.pid = pid;
}
public void setPname(String pname) {
	this.pname = pname;
}
public void setP_price(int p_price) {
	this.p_price = p_price;
}

public int getPid() {
	return pid;
}
public String getPname() {
	return pname;
}
public int getP_price() {
return p_price;
}
public static int getP_quantity() {
return p_quantity;
}
public Product() {
	
}
	
public Product(int pid, String pname, int p_price) {
	super();
	this.pid = pid;
	this.pname = pname;
	this.p_price = p_price;
}

public void AddToDatabase(String sqlQuery) {
	
	int j=DatabaseConnection.insertUpdateFromSqlQuery(sqlQuery);
	
}
}

 

