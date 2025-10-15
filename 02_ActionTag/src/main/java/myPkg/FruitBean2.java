package myPkg;

public class FruitBean2 {
	private String name;
	private String password;
	private String fruit;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFruit() {
		return fruit;
	}
	public void setFruit(String fruit) {
		System.out.println(fruit);
		this.fruit = fruit;
	}
	
}
