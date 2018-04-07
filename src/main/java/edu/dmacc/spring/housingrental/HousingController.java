package edu.dmacc.spring.housingrental;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HousingController {
	@Autowired UnitDao dao;
	
	private static final String[] unitTypes = {"Single Family","Duplex","Townhouse","Apartment"};
	
	private static final String[] states = {"Alabama" ,"Alaska","Arizona","Arkansas" ,"California" ,"Colorado" 
			,"Connecticut" ,"Delaware" ,"Florida" ,"Georgia" ,"Hawaii" ,"Idaho" ,"Illinois","Indiana" ,"Iowa" 
			,"Kansas" ,"Kentucky" ,"Louisiana" ,"Maine" ,"Maryland" ,"Massachusetts" ,"Michigan" ,"Minnesota" 
			,"Mississippi" ,"Missouri" ,"Montana","Nebraska" ,"Nevada" ,"New Hampshire" ,"New Jersey" ,"New Mexico" 
			,"New York" ,"North Carolina" ,"North Dakota" ,"Ohio" ,"Oklahoma" ,"Oregon" 
			,"Pennsylvania" ,"Rhode Island" ,"South Carolina" ,"South Dakota" ,"Tennessee" ,"Texas" ,"Utah" 
			,"Vermont" ,"Virginia" ,"Washington" ,"West Virginia" ,"Wisconsin" ,"Wyoming"};
	
	@RequestMapping(value="/form")
		public ModelAndView unit() {
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.setViewName("unitForm");
			modelAndView.addObject("unit",new Unit());
			modelAndView.addObject("unitTypes",unitTypes);
			modelAndView.addObject("states",states);
			
			return modelAndView;
	}
	
	@RequestMapping(value="/renterform")
	public ModelAndView renter1() {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("renterform1");
	
		return modelAndView;
}
	
	@RequestMapping(value="/menu")
	public ModelAndView main() {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("mainMenu");

		
		return modelAndView;
}
	
	@RequestMapping(value = "/result")
	public ModelAndView processUnit(Unit unit) { 
		ModelAndView modelAndView = new ModelAndView();
		dao.insertUnit(unit); 
		modelAndView.setViewName("unitResult"); 
		modelAndView.addObject("u", unit); 
		return modelAndView;
}
	
	@RequestMapping(value = "/viewAllUnits")
	public ModelAndView viewAllUnits() {
		ModelAndView modelAndView = new ModelAndView();
		List<Unit> allUnits = dao.getAllUnits();
		modelAndView.setViewName("viewAllUnits");
		modelAndView.addObject("all",allUnits);
		return modelAndView;
}
	
	@Bean
		public UnitDao dao() {
			UnitDao bean = new UnitDao();
			return bean;
	}
	
}
