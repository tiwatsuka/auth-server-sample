package org.example.oauth.domain.repository.client;

import org.example.oauth.domain.model.client.Client;

public interface ClientRepository {
	public Client findOne(String clientId);
}
