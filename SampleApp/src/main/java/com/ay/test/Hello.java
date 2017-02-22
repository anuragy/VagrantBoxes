package com.ay.test;

import java.net.*;

public class Hello {


    public static String sayHello() {

	String message = "Hi from host:";

	java.net.InetAddress localMachine;
	try {
	    localMachine = InetAddress.getLocalHost();
	    message += localMachine.getHostName();
	} catch (UnknownHostException e) {
	    System.out.println("Unable to determine host name");
	    message += "Unknown Host";
	}
	message += " by user:";
	message += System.getProperty("user.name");
	return message;
    }
    
    public static void main (String args[]) {

    }

}
