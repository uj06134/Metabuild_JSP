package myPkg;

public class FruitBean {
	private String name;
	private String password;
	private String [] fruit;
	
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
	public String[] getFruit() {
		return fruit;
	}
	public void setFruit(String[] fruit) {
		
		for(int i=0;i<fruit.length;i+=1) {
			System.out.println(fruit[i]);
		}
		
		this.fruit = fruit;
	}
	
}
