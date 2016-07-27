tests
testStreamResolveEntityURI
	| resolver |

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement | | stream |
		self
			should: [resolver streamResolveEntityURI: uriString]
			raise: XMLParserException.
		self
			should: [resolver streamResolveEntityURI: uriString asXMLURI]
			raise: XMLParserException.

		resolver
			maxExternalEntitySize: replacement size;
			entityAtURI: uriString
			put: replacement.
		stream := resolver streamResolveEntityURI: uriString.
		self
			assert: (stream isKindOf: ReadStream);
			assert: stream contents = replacement.
		stream := resolver streamResolveEntityURI: uriString asXMLURI.
		self
			assert: (stream isKindOf: ReadStream);
			assert: stream contents = replacement.

		resolver maxExternalEntitySize: replacement size - 1.
		self
			should: [resolver streamResolveEntityURI: uriString]
			raise: XMLLimitException.
		self
			should: [resolver streamResolveEntityURI: uriString asXMLURI]
			raise: XMLLimitException].