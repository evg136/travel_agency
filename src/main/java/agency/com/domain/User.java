package agency.com.domain;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.Collection;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Entity
public class User implements UserDetails{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY )
	private long id;
	private String username;
	private String first_name;
	private String last_name;
	private String email;
	private String password;
	private boolean active;
	private LocalDate birthday;
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getFirst_name() {
		return first_name;
	}
	
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	
	public String getLast_name() {
		return last_name;
	}
	
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();;
		this.password = passwordEncoder.encode(password);
	}
	
	public boolean isActive() {
		return active;
	}
	
	public void setActive(boolean active) {
		this.active = active;
	}
	
    public LocalDate getBirthday() {
		return birthday;
	}
	
	public void setBirthday(String birthday) {
		this.birthday = LocalDate.parse(birthday);
	}
	
	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsername() {
		return username; 
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return Arrays.asList(new SimpleGrantedAuthority("ROLE_USER"));
	}
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}
	@Override
	public boolean isEnabled() {
		return true;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String username, String password, String first_name, String last_name, String email, LocalDate birthday ) {
		super();
		this.username = username;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.password = password;
		this.active = true;
		this.birthday = birthday;
	}

	
	
}
