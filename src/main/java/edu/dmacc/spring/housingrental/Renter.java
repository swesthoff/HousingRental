package edu.dmacc.spring.housingrental;

public class Renter {
	private int renterId;  
	private String firstName;
	private String lastName;
	private int age;
	private String employer;
	private double income;
	private String phoneNmbr;
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
	
	
 
}
