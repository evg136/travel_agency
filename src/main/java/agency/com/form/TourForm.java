package agency.com.form;

import java.time.LocalDate;

import agency.com.domain.Tour;

public class TourForm {

	private String name;
	private String description;
	private String location;
	private LocalDate start_date;
	private LocalDate end_date;
	private int count_limit;
	
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
	
	public Tour toTour()
	{
		return new Tour(name, description, location, start_date, end_date, count_limit);
	}
	
}
