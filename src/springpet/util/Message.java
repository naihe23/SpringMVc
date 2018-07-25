package springpet.util;

/**
 * 传递json数据时使用
 * @author Administrator
 *
 */
public class Message {
	private int code;
	private String description;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
