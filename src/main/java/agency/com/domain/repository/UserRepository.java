package agency.com.domain.repository;



import org.springframework.data.repository.CrudRepository;

import agency.com.domain.User;



public interface UserRepository extends CrudRepository<User, Long>{
	
	User findByUsername(String username);
}
