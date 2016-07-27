tests
testRemoveEntityURIIfAbsent
	| resolver |

	resolver := self newResolverWithEntities.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self assert:
			(resolver
				removeEntityURI: uriString
				ifAbsent: [#absent]) = replacement.
		self deny: (resolver includesEntityURI: uriString).
		self assert:
			(resolver
				removeEntityURI: uriString
				ifAbsent: [#absent]) = #absent.
		self assert:
			(resolver
				removeEntityURI: uriString asXMLURI
				ifAbsent: [#absent]) = #absent].