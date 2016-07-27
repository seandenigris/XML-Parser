tests
testSchemeAndHostCaseSensitivity
	| uri uppercaseURI |

	uri := self fullURIString asXMLURI.
	uppercaseURI := self fullURIString asUppercase asXMLURI.
	self
		assert: uri scheme = uppercaseURI scheme;
		assert: uri host = uppercaseURI host;
		deny: uri path = uppercaseURI path;
		deny: uri queryString = uppercaseURI queryString;
		deny: uri fragment = uppercaseURI fragment.