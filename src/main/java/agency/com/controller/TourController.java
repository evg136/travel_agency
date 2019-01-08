package agency.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import agency.com.domain.Tour;
import agency.com.domain.repository.TourRepository;
import agency.com.form.TourForm;


@Controller
public class TourController {
	
	@Autowired
	private TourRepository tourRepo;

	
	@GetMapping("/tours")
	  public String showTourPage(Model model) {
	    Iterable<Tour> tours = tourRepo.findAll();
	    model.addAttribute("Tours", tours);
	    return "tours";
	  }
	
	
	@RequestMapping("/tour")
	public String getTourById(@RequestParam("id") String tourId, Model model) {
	   
	   Long id = Long.valueOf(tourId).longValue();	
	   Tour tour = tourRepo.findById(id).get();	
	   model.addAttribute("tour", tour);
	   return "tour";
	}
	
	@RequestMapping("/tour_delete")
	public String deleteTour(@RequestParam("id") String tourId, Model model) {
		   
		   Long id = Long.valueOf(tourId).longValue();	
		   tourRepo.deleteById(id);	
		   return "redirect:/tours";
	}
	
	
	@RequestMapping("/tour_edit")
	public String showEditTourPage(@RequestParam("id") String tourId, Model model)
	{
		Long id = Long.valueOf(tourId).longValue();
		Tour tour = tourRepo.findById(id).get();
		model.addAttribute("tour_edit", tour);
		return "tourform";
	}
	
	@RequestMapping(value = "/tour_edit", method = RequestMethod.POST)
	public String updateTour(@ModelAttribute("tour_edit") Tour tour)
	{
		tourRepo.save(tour);
		return "redirect:/tours";
	}
	
	@RequestMapping("/addtour")
	public String showAddTourForm(Model model)
	{
		model.addAttribute("Action", true);
		return "tourform";
	}
	
	@RequestMapping(value = "/addtour", method = RequestMethod.POST)
	public String addTour(TourForm tourForm)
	{
		tourRepo.save(tourForm.toTour());
		return "redirect:/tours";
	}	
}
