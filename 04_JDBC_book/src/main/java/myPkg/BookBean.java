package myPkg;

public class BookBean {
	private int no;
	private String title;
	private String author;
	private String publisher;
	private int price;
	private String day;
	private String kind;
	private String bookstore;
	private int count;
	
	public BookBean() {
		
	}

	public BookBean(int no, String title, String author, String publisher, int price, String date, String kind,
			String bookstore, int count) {
		super();
		this.no = no;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.price = price;
		this.day = date;
		this.kind = kind;
		this.bookstore = bookstore;
		this.count = count;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String date) {
		this.day = date;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getBookstore() {
		return bookstore;
	}

	public void setBookstore(String bookstore) {
		this.bookstore = bookstore;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
}
