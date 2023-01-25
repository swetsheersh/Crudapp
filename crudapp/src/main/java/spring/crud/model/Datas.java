package spring.crud.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="datas")
public class Datas {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private int id;
	@Column(name="product")
	private String product;
	@Column(name="description")
	private String description;
	@Column(name="price")
	private int price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getdescription() {
		return description;
	}
	public void setdescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Datas() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Datas(int id, String product, String description, int price) {
		super();
		this.id = id;
		this.product = product;
		this.description = description;
		this.price = price;
	}
	@Override
	public String toString() {
		return "Datas [id=" + id + ", product=" + product + ", Description=" + description + ", price=" + price + "]";
	}
	
}
