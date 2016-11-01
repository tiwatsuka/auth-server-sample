package org.example.oauth.app.common.security.oauth2;

import java.util.Map;

import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.DefaultAccessTokenConverter;

public class AuthenticationAccessTokenConverter extends DefaultAccessTokenConverter{

	@Override
	public Map<String, ?> convertAccessToken(OAuth2AccessToken token,
			OAuth2Authentication authentication) {
		Map <String, Object> result = (Map<String, Object>)super.convertAccessToken(token, authentication);
		result.put("authentication", authentication.getPrincipal());
		return result;
	}

}
