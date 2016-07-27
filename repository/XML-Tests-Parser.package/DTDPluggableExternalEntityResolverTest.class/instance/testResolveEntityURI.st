tests
testResolveEntityURI
	| resolver |

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self
			should: [resolver resolveEntityURI: uriString]
			raise: XMLParserException.
		self
			should: [resolver resolveEntityURI: uriString asXMLURI]
			raise: XMLParserException.

		resolver
			maxExternalEntitySize: replacement size;
			entityAtURI: uriString
			put: replacement.
		self
			assert: (resolver resolveEntityURI: uriString) = replacement;
			assert: (resolver resolveEntityURI: uriString asXMLURI) = replacement.

		resolver maxExternalEntitySize: replacement size - 1.
		self
			should: [resolver resolveEntityURI: uriString]
			raise: XMLLimitException.
		self
			should: [resolver resolveEntityURI: uriString asXMLURI]
			raise: XMLLimitException].