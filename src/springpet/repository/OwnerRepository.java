package springpet.repository;

import java.util.Collection;

import springpet.model.Owner;

public interface OwnerRepository {
	void addOwner(Owner owner);
	Collection<Owner> findOwnersByName(String name);
	Collection<Owner> findAllOwners();
}
