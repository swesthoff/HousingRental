package edu.dmacc.spring.housingrental;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import org.springframework.web.servlet.ModelAndView;
 


public class RenterDao {
EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("HousingRental");
	
	
	public List<Renter> getAllRenters(){
	EntityManager em = emfactory.createEntityManager();
	em.getTransaction().begin();
	String q = "select u from Renter u";
	TypedQuery<Renter> typedQuery = em.createQuery(q,Renter.class);
	List<Renter> all = typedQuery.getResultList();
	return all;
}
	
	public void insertRenter(Renter renterToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(renterToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public void deleteRenter(Renter rentertoDelete) {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		TypedQuery<Renter> typedQuery = em.createQuery(
				"select li from Renter li where li.renterId = :selectedId",
				Renter.class);
		typedQuery.setParameter("selectedId", rentertoDelete.getRenterId()); 
		typedQuery.setMaxResults(1);
		Renter result = typedQuery.getSingleResult();
		System.out.println("TEST - result: " + result);
		em.remove(result);
		em.getTransaction().commit();
		em.close();
	}

	public Renter searchForRenterById(int idToEdit) {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		
		Renter foundItem =  em.find(Renter.class, idToEdit);
		em.close();
		return foundItem; 
	}

	public void editRenter(Renter toEdit) {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin(); 
		em.merge(toEdit);
		em.getTransaction().commit();
		em.close();
	}
	 
	
}
