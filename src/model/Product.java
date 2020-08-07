package model;

public class Product {

	 private String id;
	 private String product;
	 private String unitprice;
	 private String quantity;
	 private String uname;
	 
	 public String getUname() {
			return uname;
		}
		public void setUname(String uname) {
			this.uname = uname;
		}
	
	 public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(String unitprice) {
		this.unitprice = unitprice;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	 
	 
}