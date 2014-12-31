package com.nttdata.checkin.exception;

public class NoLCAImplementation extends Exception {
	private String message;
	public NoLCAImplementation(String message) {
	 this.message = message;
	}
	public String getMessage(){
		return message;
		
	}
}
