package ex07;

public class Member {
	
	private String name;	// 필드
	private int age;	
	
	public Member () {}		// 기본생성자
	
	public Member(String name, int age) {	// 매개변수를 전달받는 생성자
		super();
		this.name = name;
		this.age = age;
	}
	
	// getter/setter
	String getName() {
		return name;
	}
	void setName(String name) {
		this.name = name;
	}
	int getAge() {
		return age;
	}
	void setAge(int age) {
		this.age = age;
	}
	
	

}
