package org.example.oauth.domain.service.client;

import java.util.stream.Collectors;

import org.example.oauth.domain.model.client.Client;
import org.example.oauth.domain.model.client.OAuthClientDetails;
import org.example.oauth.domain.model.enums.Grant;
import org.example.oauth.domain.model.enums.Scope;
import org.example.oauth.domain.repository.client.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.provider.ClientDetails;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.ClientRegistrationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("clientDetailsService")
@Transactional
public class OAuthClientDetailsService implements ClientDetailsService {

	@Autowired
	ClientRepository ClientRepository;

	@Override
	public ClientDetails loadClientByClientId(String clientId)
			throws ClientRegistrationException {
		Client client = ClientRepository.findOne(clientId);
		OAuthClientDetails clientDetails = new OAuthClientDetails();
		clientDetails.setClientId(client.getClientId());
		clientDetails.setClientSecret(client.getClientSecret());
		clientDetails.setResourceIds(client.getResourceIds());
		clientDetails.setScope(client.getScopes().stream()
				.map(Scope::toString).collect(Collectors.toSet()));
		clientDetails.setAuthorizedGrantTypes(client.getGrants().stream()
				.map(Grant::getValue).collect(Collectors.toSet()));
		clientDetails.setRegisteredRedirectUri(client.getRedirectUris());
		clientDetails.setAuthorities(client.getRoles().stream()
				.map(role -> new SimpleGrantedAuthority(role.toString()))
				.collect(Collectors.toSet()));
		clientDetails.setClient(client);
		return clientDetails;
	}

}
