package springpet.service;

import java.util.Collection;

import org.springframework.stereotype.Service;

import springpet.model.Owner;
import springpet.model.User;
import springpet.repository.DataRepository;

@Service
public class PetClinicServiceImpl implements PetClinicService {

	@Override
	public void saveOwner(Owner owner) {
		if (owner.isNew())
			DataRepository.addOwner(owner);
		
	}

	@Override
	public Collection<Owner> findOwners(String name) {
		if ("".equals(name.trim()))
			return DataRepository.findAllOwners();
		else
			return DataRepository.findOwnersByName(name);
	}

	@Override
	public User verifyUser(String account, String password) {
		return DataRepository.verifyUser(account, password);
	}

	@Override
	public User findUserByAccount(String account) {
		return DataRepository.findUserByAccount(account);
	}

}
