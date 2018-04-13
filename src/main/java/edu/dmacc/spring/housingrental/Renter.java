package edu.dmacc.spring.housingrental;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="renters")
public class Renter {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int renterId;  
	private String firstName;
	private String lastName;
	private int age;
	private String employer;
	private double income;
	private String phoneNmbr; 
	private int unitId; 
	
	public Renter() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Renter(int renterId, String firstName, String lastName, int age, String employer, double income,
			String phoneNmbr, int unitId) {
		super();
		this.renterId = renterId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.employer = employer;
		this.income = income;
		this.phoneNmbr = phoneNmbr;
		this.unitId = unitId;
	}



	public int getRenterId() {
		return renterId;
	}
	
	public void setRenterId(int renterId) {
		this.renterId = renterId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmployer() {
		return employer;
	}
	public void setEmployer(String employer) {
		this.employer = employer;
	}
	public double getIncome() {
		return income;
	}
	public void setIncome(double income) {
		this.income = income;
	}
	public String getPhoneNmbr() {
		return phoneNmbr;
	}
	public void setPhoneNmbr(String phoneNmbr) {
		this.phoneNmbr = phoneNmbr;
	}

	public int getUnitId() {
		return unitId;
	}
	public void setUnitId(int unitId) {
		this.unitId = unitId;
	}
	
}
