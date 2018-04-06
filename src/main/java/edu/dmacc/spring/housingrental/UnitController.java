package edu.dmacc.spring.housingrental;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class UnitController {

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
	
	
}
