tests
testEntityAtURIIfAbsent
	| resolver |

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self assert:
			(resolver
				entityAtURI: uriString
				ifAbsent: [#absent]) = #absent.
		self assert:
			(resolver
				entityAtURI: uriString asXMLURI
				ifAbsent: [#absent]) = #absent.

		resolver
			entityAtURI: uriString
			put: replacement.
		self assert:
			(resolver
				entityAtURI: uriString
				ifAbsent: [#absent]) = replacement.
		self assert:
			(resolver
				entityAtURI: uriString asXMLURI
				ifAbsent: [#absent]) = replacement].