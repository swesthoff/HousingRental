package edu.dmacc.spring.housingrental;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
//Testing//
@Entity
@Table(name="units")
public class Unit {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int unitId;
	private String unitType;
	private double cost;
	private double depositAmount;
	private int nmbrBedrooms;
	private int nmbrBathrooms;
	private int squareFootage;
	private String address;
	private String city;
	private String state;
	private String zip;
	
	
	public int getUnitId() {
		return unitId;
	}
	public void setUnitId(int unitId) {
		this.unitId = unitId;
	}
	public String getUnitType() {
		return unitType;
	}
	public void setUnitType(String unitType) {
		this.unitType = unitType;
	}
	
	
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public double getDepositAmount() {
		return depositAmount;
	}
	public void setDepositAmount(double depositAmount) {
		this.depositAmount = depositAmount;
	}
	public int getNmbrBedrooms() {
		return nmbrBedrooms;
	}
	public void setNmbrBedrooms(int nmbrBedrooms) {
		this.nmbrBedrooms = nmbrBedrooms;
	}
	public int getNmbrBathrooms() {
		return nmbrBathrooms;
	}
	public void setNmbrBathrooms(int nmbrBathrooms) {
		this.nmbrBathrooms = nmbrBathrooms;
	}
	public int getSquareFootage() {
		return squareFootage;
	}
	public void setSquareFootage(int squareFootage) {
		this.squareFootage = squareFootage;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	
	

}
