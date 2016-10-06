package org.example.oauth.domain.model.client;

import java.io.Serializable;
import java.util.Set;

import org.example.oauth.domain.model.enums.Role;
import org.example.oauth.domain.model.enums.Scope;
import org.example.oauth.domain.model.enums.Grant;

public class Client implements Serializable{

	private static final long serialVersionUID = 1L;

	private String clientId;
	
	private String clientSecret;
	
	private String clientName;
	
	private Set<String> resourceIds;
	
	private Set<Scope> scopes;
	
	private Set<Grant> grants;
	
	private Set<Role> roles;
	
	private Set<String> redirectUris;

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public String getClientSecret() {
		return clientSecret;
	}

	public void setClientSecret(String clientSecret) {
		this.clientSecret = clientSecret;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public Set<String> getResourceIds() {
		return resourceIds;
	}

	public void setResourceIds(Set<String> resourceIds) {
		this.resourceIds = resourceIds;
	}

	public Set<Scope> getScopes() {
		return scopes;
	}

	public void setScopes(Set<Scope> scopes) {
		this.scopes = scopes;
	}

	public Set<Grant> getGrants() {
		return grants;
	}

	public void setGrants(Set<Grant> grants) {
		this.grants = grants;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public Set<String> getRedirectUris() {
		return redirectUris;
	}

	public void setRedirectUris(Set<String> redirectUris) {
		this.redirectUris = redirectUris;
	}

}
