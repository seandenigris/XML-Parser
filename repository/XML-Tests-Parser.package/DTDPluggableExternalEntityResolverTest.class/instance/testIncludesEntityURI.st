tests
testIncludesEntityURI
	| resolver |

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self
			deny: (resolver includesEntityURI: uriString);
			deny: (resolver includesEntityURI: uriString asXMLURI).

		resolver
			entityAtURI: uriString
			put: replacement.
		self
			assert: (resolver includesEntityURI: uriString);
			assert: (resolver includesEntityURI: uriString asXMLURI)].