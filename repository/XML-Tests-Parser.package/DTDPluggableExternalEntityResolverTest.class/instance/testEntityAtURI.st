tests
testEntityAtURI
	| resolver |

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self
			assert: (resolver entityAtURI: uriString) = '';
			assert: (resolver entityAtURI: uriString asXMLURI) = ''.

		resolver
			entityAtURI: uriString
			put: replacement.
		self
			assert: (resolver entityAtURI: uriString) = replacement;
			assert: (resolver entityAtURI: uriString asXMLURI) = replacement].