package agency.com.domain;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Tour {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY )
	private Long id;
	private String name;
	private String description;
	private String location;
	private LocalDate start_date;
	private LocalDate end_date;
	private int count_limit;
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public LocalDate getStart_date() {
		return start_date;
	}
	
	public void setStart_date(String start_date) {
		this.start_date = LocalDate.parse(start_date);
	}
	
	public LocalDate getEnd_date() {
		return end_date;
	}
	
	public void setEnd_date(String end_date) {
		this.end_date = LocalDate.parse(end_date);
	}
	
	public int getCount_limit() {
		return count_limit;
	}
	
	public void setCount_limit(int count_limit) {
		this.count_limit = count_limit;
	}

	public Tour() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Tour(String name, String description, String location, LocalDate start_date, LocalDate end_date,
			int count_limit) {
		super();
		this.name = name;
		this.description = description;
		this.location = location;
		this.start_date = start_date;
		this.end_date = end_date;
		this.count_limit = count_limit;
	}
	
	
}
