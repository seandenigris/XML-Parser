tests
testParsingExternalEntities
	"This test uses HTTP so is skipped by default."
	| entityCache entityCacheCopy |

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	DTDCachingExternalEntityResolver clearEntityCache.
	entityCache := DTDCachingExternalEntityResolver entityCache.
	self externalEntityURLs do: [:each |
		self deny: (entityCache includesKey: each asXMLURI)].

	SAXHandler
		parse: self sourceXML
		usingNamespaces: true
		validation: true
		externalEntities: true.
	self externalEntityURLs do: [:each |
		self assert: (entityCache at: each asXMLURI ifAbsent: ['']) notEmpty].

	"check for re-requesting"
	entityCacheCopy := entityCache copy.
	SAXHandler
		parse: self sourceXML
		usingNamespaces: true
		validation: true
		externalEntities: true.
	self externalEntityURLs do: [:each |
		self assert: (entityCache at: each asXMLURI) == (entityCacheCopy at: each asXMLURI)].