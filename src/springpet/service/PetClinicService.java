package springpet.service;

import java.util.*;

import springpet.model.*;

public interface PetClinicService {
	void saveOwner(Owner owner);
    Collection<Owner> findOwners(String name);
    User verifyUser(String account, String password);
    User findUserByAccount(String account);
}
