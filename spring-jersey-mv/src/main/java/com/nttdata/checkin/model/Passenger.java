package com.nttdata.checkin.model;

import java.io.Serializable;
import java.util.Date;

public class Passenger implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8012704918828349702L;
	
	private String firstname;
	private String lastname;
	private boolean gender;
	private int numberOfbags;
	private int	baggageWeight;
	private String additionalInformation;
	private String	flightNumber;
	private Date 	flightFate;
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public int getNumberOfbags() {
		return numberOfbags;
	}
	public void setNumberOfbags(int numberOfbags) {
		this.numberOfbags = numberOfbags;
	}
	public int getBaggageWeight() {
		return baggageWeight;
	}
	public void setBaggageWeight(int baggageWeight) {
		this.baggageWeight = baggageWeight;
	}
	public String getAdditionalInformation() {
		return additionalInformation;
	}
	public void setAdditionalInformation(String additionalInformation) {
		this.additionalInformation = additionalInformation;
	}
	public Date getFlightFate() {
		return flightFate;
	}
	public void setFlightFate(Date flightFate) {
		this.flightFate = flightFate;
	}
	public String getFlightNumber() {
		return flightNumber;
	}
	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}


}
