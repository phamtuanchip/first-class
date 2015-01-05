package com.mobilecheckin.flights.model;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

public class Flight implements Serializable{
	
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

private static final String BLANK = " ";
	
	private String fligNumber;
	
	private Date fligDate = new Date();
	
	private String fligStatus;
	
	private String fligFrom;
	
	private String fligTo;
	
	private Date depaTime;
	
	private Date arriTime;
	
	private String seatMap = BLANK;

	public String getFligNumber() {
		return fligNumber;
	}

	public void setFligNumber(String fligNumber) {
		this.fligNumber = fligNumber;
	}

	public Date getFligDate() {
		return fligDate;
	}

	public void setFligDate(Date fligDate) {
		this.fligDate = fligDate;
	}

	public String getFligStatus() {
		return fligStatus;
	}

	public void setFligStatus(String fligStatus) {
		this.fligStatus = fligStatus;
	}

	public String getFligFrom() {
		return fligFrom;
	}

	public void setFligFrom(String fligFrom) {
		this.fligFrom = fligFrom;
	}

	public String getFligTo() {
		return fligTo;
	}

	public void setFligTo(String fligTo) {
		this.fligTo = fligTo;
	}

	public Date getDepaTime() {
		return depaTime;
	}

	public void setDepaTime(Date depaTime) {
		this.depaTime = depaTime;
	}

	public Date getArriTime() {
		return arriTime;
	}

	public void setArriTime(Date arriTime) {
		this.arriTime = arriTime;
	}

	public String getSeatMap() {
		return seatMap;
	}

	public void setSeatMap(String seatMap) {
		this.seatMap = seatMap;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public static String getBlank() {
		return BLANK;
	}

	@Override
	public String toString() {
		return "Flight [fligNumber=" + fligNumber + ", fligDate=" + fligDate
				+ ", fligStatus=" + fligStatus + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((fligDate == null) ? 0 : fligDate.hashCode());
		result = prime * result
				+ ((fligNumber == null) ? 0 : fligNumber.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Flight other = (Flight) obj;
		if (fligDate == null) {
			if (other.fligDate != null)
				return false;
		} else if (!fligDate.equals(other.fligDate))
			return false;
		if (fligNumber == null) {
			if (other.fligNumber != null)
				return false;
		} else if (!fligNumber.equals(other.fligNumber))
			return false;
		return true;
	}
	
	
	

}
