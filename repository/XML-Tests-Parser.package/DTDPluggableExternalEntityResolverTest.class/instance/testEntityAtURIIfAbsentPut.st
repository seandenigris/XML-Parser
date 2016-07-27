tests
testEntityAtURIIfAbsentPut
	| resolver |

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self assert:
			(resolver
				entityAtURI: uriString
				ifAbsentPut: [replacement]) = replacement.
		self assert:
			(resolver
				entityAtURI: uriString asXMLURI
				ifAbsentPut: [#absent]) = replacement.
		self assert: (resolver entityAtURI: uriString) = replacement].