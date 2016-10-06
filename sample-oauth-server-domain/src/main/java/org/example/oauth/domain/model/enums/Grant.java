package org.example.oauth.domain.model.enums;

public enum Grant {
	AUTHORIZATION_CODE("authorization_code"),
	IMPLICIT("implicit"),
	REFRESH_TOKEN("refresh_token"),
	CLIENT_CREDENTIALS("client_credentials"),
	PASSWORD("password");
	
	private String value;
	
	private Grant(String value) {
		this.value = value;
	}
	
	public String getValue() {
		return value;
	}
}
