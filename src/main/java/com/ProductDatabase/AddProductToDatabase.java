package com.ProductDatabase;

import com.EntityClass.Product;

import Connection.DatabaseConnection;

public class AddProductToDatabase {
	public static void main(String[] args) {

		Product product[]=new Product[9];
		product[0]=new Product(2501,"Stylish Suede Ankle Boots",2300);
		product[1]=new Product(2502,"Sporty Running Shoes",4000);
		product[2]=new Product(2503,"Modern Athletic Shoes",4700);
		product[3]=new Product(2504,"Casual Everyday Flats",1899);
		product[4]=new Product(2505,"Chic Ankle Boots",2999);
		product[5]=new Product(2506,"Trendy High-Top Sneakers",6000);
		product[6]=new Product(2507,"Elegant Velvet High Heels",4999);
		product[7]=new Product(2508,"Classic Leather Loafers",3000);
		product[8]=new Product(2509,"Summer Beach Sandals",1399);
		
		Product obj=new Product();


		for(int i=0;i<product.length;i++) {
			
			String sqlQuery="insert into product values('"+product[i].getPid()+"','"+product[i].getPname()+"','"+product[i].getP_price()+"','"+Product.p_quantity+"')";
		    obj.AddToDatabase(sqlQuery);
		}

}
}
