tests
testEntityAtURIPut
	| resolver |

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self assert:
			(resolver
				entityAtURI: uriString
				put: replacement) = replacement.
		self assert: (resolver entityAtURI: uriString) = replacement.

		self assert:
			(resolver
				entityAtURI: uriString asXMLURI
				put: self newEntityReplacement) = self newEntityReplacement.
		self assert:
			(resolver entityAtURI: uriString asXMLURI) = self newEntityReplacement].