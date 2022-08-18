package com.deajin.lis.util;

import java.util.Properties;


public class SMSService {
	final String URL = "https://api.coolsms.co.kr";
	private String sms_url = URL + "/sms/1.5/";
	private String senderid_url = URL + "/senderid/1.1/";
	private String api_key;
	private String api_secret;	
	private String timestamp;
	private Https https = new Https();
	Properties properties = System.getProperties();
}
