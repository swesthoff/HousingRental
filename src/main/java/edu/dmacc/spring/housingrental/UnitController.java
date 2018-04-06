package edu.dmacc.spring.housingrental;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class UnitController {

	private static final String[] unitTypes = {"Single Family","Duplex","Townhouse","Apartment"};
	
	
	@RequestMapping(value="/form")
		public ModelAndView unit() {
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.setViewName("unitForm");
			modelAndView.addObject("unit",new Unit());
			modelAndView.addObject("unitTypes",unitTypes);
			
			return modelAndView;
	}
	
	
}
