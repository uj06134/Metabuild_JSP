package myPkg;

public class SimpleBean {
	private String msg;
	
	public SimpleBean(){
		System.out.println("SimpleBean 생성자");
	}
	
	public String getMsg() {
		return msg;
	}
	
	public void setMsg(String msg) {
		this.msg = msg;
	}
}
