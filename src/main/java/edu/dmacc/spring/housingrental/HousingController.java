package edu.dmacc.spring.housingrental;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HousingController {
	@Autowired
	UnitDao dao;
	@Autowired
	RenterDao dao2;

	private static final String[] unitTypes = { "Single Family", "Duplex", "Townhouse", "Apartment" };

	private static final String[] states = { "Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado",
			"Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas",
			"Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi",
			"Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York",
			"North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island",
			"South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington",
			"West Virginia", "Wisconsin", "Wyoming" };

	@RequestMapping(value = "/form")
	public ModelAndView unit() {
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("unitForm");
		modelAndView.addObject("unit", new Unit());
		modelAndView.addObject("unitTypes", unitTypes);
		modelAndView.addObject("states", states);

		return modelAndView;
	}

	@RequestMapping(value = "/renterform")
	public ModelAndView renter1() {
		ModelAndView modelAndView = new ModelAndView();
		List<Unit> allUnits = dao.getAllUnits();
		modelAndView.setViewName("renterform1");
		modelAndView.addObject("allUnits",allUnits);
		modelAndView.addObject("renter", new Renter());
		return modelAndView;
	}

	@RequestMapping(value = "/menu")
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

	@RequestMapping(value = "/renterResult")
	public ModelAndView processRenter(Renter renter) { 
		ModelAndView modelAndView = new ModelAndView();
		dao2.insertRenter(renter);
		modelAndView.setViewName("renterResult");
		modelAndView.addObject("u", renter);
		return modelAndView;
	}
	
	@RequestMapping(value = "/renterEditResult")
	
		public ModelAndView processEditRenter(Renter renter) {
		ModelAndView modelAndView = new ModelAndView();	
		dao2.editRenter(renter);
		modelAndView.setViewName("renterResult");
		modelAndView.addObject("u", renter);
		return modelAndView;
	}

	@RequestMapping(value = "/editResult")
	public ModelAndView processEditUnit(Unit unit) {
		ModelAndView modelAndView = new ModelAndView();
		dao.editUnit(unit);
		modelAndView.setViewName("unitResult"); 
		modelAndView.addObject("states", states);
		modelAndView.addObject("u", unit);
		return modelAndView;
	}
	
	@RequestMapping(value = "/viewAllUnits")
	public ModelAndView viewAllUnits() {
		ModelAndView modelAndView = new ModelAndView();
		List<Unit> allUnits = dao.getAllUnits();
		modelAndView.setViewName("viewAllUnits"); 
		modelAndView.addObject("states", states);
		modelAndView.addObject("all", allUnits);
		return modelAndView;
	}

	@RequestMapping(value = "/viewAllRenters")
	public ModelAndView viewAllRenters() { 
		ModelAndView modelAndView = new ModelAndView();
		List<Renter> allRenters = dao2.getAllRenters();
		modelAndView.setViewName("viewAllRenters");
		modelAndView.addObject("all", allRenters);
		return modelAndView;
	}
	
	@RequestMapping(value = "/renterUpdate")
	public ModelAndView renterUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		String act = request.getParameter("doThisToRenter"); 
		ModelAndView modelAndView = new ModelAndView();
		 if (act.equals("Edit Selected Renter")) {
			String checkId = request.getParameter("renterId"); 
			System.out.println("checkid " + checkId);
			if (checkId == null) { 
				modelAndView.setViewName("renterNotChosen"); 
				return modelAndView;
			} 
			
			Integer tempId = Integer.parseInt(request.getParameter("renterId")); 
		
			Renter renterToEdit = dao2.searchForRenterById(tempId);
			request.setAttribute("renterToEdit", renterToEdit);
			
			modelAndView.setViewName("editRenter");
			modelAndView.addObject("all", renterToEdit);		 
			 
		} else if (act.equals("Delete Selected Renter")) {
			String checkId = request.getParameter("renterId"); 
			if (checkId == null) { 
				modelAndView.setViewName("renterNotChosen"); 
				return modelAndView;

			}  
			
			Integer tempId = Integer.parseInt(request.getParameter("renterId"));
			Renter renterToDelete = dao2.searchForRenterById(tempId);

			dao2.deleteRenter(renterToDelete); 
			 List<Renter> allRenters = dao2.getAllRenters();
			 modelAndView.setViewName("viewAllRenters");
			 modelAndView.addObject("all", allRenters);  
		}
		 return modelAndView;
	}

	@RequestMapping(value = "/unitUpdate")
	public ModelAndView unitUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		String act = request.getParameter("doThisToUnit"); 
		ModelAndView modelAndView = new ModelAndView();
		 if (act.equals("Edit Selected Housing Unit")) {
			String checkId = request.getParameter("unitId");   
			if (checkId == null) { 
				modelAndView.setViewName("unitNotChosen"); 
				return modelAndView;
			} 
			Integer tempId = Integer.parseInt(request.getParameter("unitId")); 
			Unit unitToEdit = dao.searchForUnitById(tempId);
			request.setAttribute("unitToEdit", unitToEdit);
			modelAndView.setViewName("editUnit");
	
			modelAndView.addObject("unitTypes", unitTypes);
			modelAndView.addObject("states", states); 
			modelAndView.addObject("all", unitToEdit);		 
			 
		} else if (act.equals("Delete Selected Housing Unit")) {
			String checkId = request.getParameter("unitId"); 
			if (checkId == null) { 
				modelAndView.setViewName("unitNotChosen"); 
				return modelAndView;
			} 
			
			Integer tempId = Integer.parseInt(request.getParameter("unitId"));
			Unit unitToDelete = dao.searchForUnitById(tempId);

			dao.deleteUnit(unitToDelete); 
			 List<Unit> allUnits = dao.getAllUnits();
			 modelAndView.setViewName("viewAllUnits");
			 modelAndView.addObject("all", allUnits);  
		}
		 return modelAndView;
	}

	
	@Bean
	public UnitDao dao() {
		UnitDao bean = new UnitDao();
		return bean;
	}

	@Bean
	public RenterDao dao2() {
		RenterDao bean = new RenterDao();
		return bean;
	}

}
