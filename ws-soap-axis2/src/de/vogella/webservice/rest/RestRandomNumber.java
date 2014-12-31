package de.vogella.webservice.rest;

import java.util.Random;

public class RestRandomNumber {
	public long getNumber(){
		Random random = new Random(1000);
		return random.nextLong();
	}
}
