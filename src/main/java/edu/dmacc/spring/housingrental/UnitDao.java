package edu.dmacc.spring.housingrental;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
 

public class UnitDao {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("HousingRental");
	
	
	public List<Unit> getAllUnits(){
	EntityManager em = emfactory.createEntityManager();
	em.getTransaction().begin();
	String q = "select u from Unit u";
	TypedQuery<Unit> typedQuery = em.createQuery(q,Unit.class);
	List<Unit> all = typedQuery.getResultList();
	return all;
}
	
	public void insertUnit(Unit unitToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(unitToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public void deleteUnit(Unit unittoDelete) {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		TypedQuery<Unit> typedQuery = em.createQuery(
				"select li from Unit li where li.unitId = :selectedId",
				Unit.class);
		typedQuery.setParameter("selectedId", unittoDelete.getUnitId()); 
		typedQuery.setMaxResults(1);
		Unit result = typedQuery.getSingleResult();
		System.out.println("TEST - result: " + result);
		em.remove(result);
		em.getTransaction().commit();
		em.close();
	}

	public Unit searchForUnitById(int idToEdit) {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		
		Unit foundItem =  em.find(Unit.class, idToEdit);
		em.close();
		return foundItem; 
	}

	public void editUnit(Unit toEdit) {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin(); 
		em.merge(toEdit);
		em.getTransaction().commit();
		em.close();
	}
	 
	
}
