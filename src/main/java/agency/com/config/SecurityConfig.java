package agency.com.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	private UserDetailsService userDetailsService;
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder(); //Applies scrypt hashing encryption
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
		.userDetailsService(userDetailsService)
		.passwordEncoder(encoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
			.antMatchers("/users","/userinfo", "/logout", "/tours", "/tour", "/tour_delete", "/tour_edit", "/addtour")
			.access("hasRole('ROLE_USER')")
			.antMatchers("/**").permitAll()
			
			
			.and()
			.formLogin()
			.loginPage("/login")
			.defaultSuccessUrl("/tours")
			.permitAll()
		
			.and()
			.logout()
			.logoutSuccessUrl("/")
			
			.and()
	        .csrf()
	          .ignoringAntMatchers("/h2-console/**")
	        
	        
	      // Allow pages to be loaded in frames from the same origin; needed for H2-Console
	      .and()  
	        .headers()
	          .frameOptions()
	            .sameOrigin()
	            
	            .and()
		        .csrf()
		        .disable()
	            
	      ;      
	            
	}
	
}
