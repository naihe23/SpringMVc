package springpet.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import springpet.model.Owner;
import springpet.model.User;

public class DataRepository {
	private static Map<String,User> users = new HashMap<String,User>();
	
	static {
		users.put("jack", new User("jack","123456","Dennis Chapman"));
		users.put("tom", new User("tom","123456","Richard Wagner"));
		users.put("mary", new User("marry","123456","John Gilbert"));
	}
	
	private static Map<String,Owner> owners = new HashMap<String,Owner>();
	private static int ownerId = 0;
	
	public static void addOwner(Owner owner) {
		ownerId++;
		owner.setId(ownerId);
		owners.put(owner.getName(), owner);		
	}
	
	public static List<Owner> findOwnersByName(String name){
		List<Owner> list = new ArrayList<Owner>();
		for (Owner owner: owners.values()) {
			if (owner.getName().contains(name))
				list.add(owner);
		}
		return list;
	}
	
	public static List<Owner> findAllOwners(){
		List<Owner> list = new ArrayList<Owner>();
		for (Owner owner: owners.values()) {
			list.add(owner);
		}
		return list;
	}
	
	public static User verifyUser(String account, String password) {
		User user = users.get(account);
		if(user != null && password!=null)
			if (!password.equals(user.getPassword()))
				user = null;
		return user;
	}
	
	public static User findUserByAccount(String account) {
		return users.get(account);
	}
	
	
}
