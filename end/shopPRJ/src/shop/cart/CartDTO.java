package shop.cart;

public class CartDTO {

	private String img_src;
	private String item_name;
	private String item_amount;
	private String item_price;
	
	
	@Override
	public String toString() {
		return img_src + "," + item_name + "," + item_amount + "," + item_price;
	}


	public String getImg_src() {
		return img_src;
	}


	public void setImg_src(String img_src) {
		this.img_src = img_src;
	}


	public String getItem_name() {
		return item_name;
	}


	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}


	public String getItem_amount() {
		return item_amount;
	}


	public void setItem_amount(String item_amount) {
		this.item_amount = item_amount;
	}


	public String getItem_price() {
		return item_price;
	}


	public void setItem_price(String item_price) {
		this.item_price = item_price;
	}
	
	
}
