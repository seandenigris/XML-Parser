tests
testRemoveEntityURI
	| resolver |

	resolver := self newResolverWithEntities.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self
			assert: (resolver removeEntityURI: uriString) = replacement;
			deny: (resolver includesEntityURI: uriString).
		self
			should: [resolver removeEntityURI: uriString]
			raise: Error.
		self
			should: [resolver removeEntityURI: uriString asXMLURI]
			raise: Error.].