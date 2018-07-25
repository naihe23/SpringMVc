package springpet.model;

public class User extends NamedEntity{
	protected String account;
	protected String password;
	
	public User() {
		
	}
	
	public User(String account,String password,String name) {
		this.account = account;
		this.password = password;
		this.name=name;
	}	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}	
	
}
