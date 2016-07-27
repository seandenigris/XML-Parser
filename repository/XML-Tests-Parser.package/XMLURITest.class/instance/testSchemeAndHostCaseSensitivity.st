tests
testSchemeAndHostCaseSensitivity
	| uri uppercaseUri |

	uri := self fullURIString asXMLURI.
	uppercaseUri := self fullURIString asUppercase asXMLURI.
	self
		assert: uri scheme = uppercaseUri scheme;
		assert: uri host = uppercaseUri host;
		deny: uri path = uppercaseUri path;
		deny: uri queryString = uppercaseUri queryString;
		deny: uri fragment = uppercaseUri fragment.