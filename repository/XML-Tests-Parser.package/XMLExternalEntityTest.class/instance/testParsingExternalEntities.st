tests
testParsingExternalEntities
	"This test uses HTTP and takes time to run so it is skipped by default.

	(self isSkipping: false) testParsingExternalEntities
	"
	| entityCache entityCacheCopy |

	self isSkipping
		ifTrue: [self skip].

	DTDCachingEntityResolver clearEntityCache.
	entityCache := DTDCachingEntityResolver entityCache.
	self deny:
		(self externalEntityURLs anySatisfy: [:each |
			entityCache includesKey: each asXMLURI]).

	SAXHandler parse: self sourceXML.
	self assert:
		(self externalEntityURLs allSatisfy: [:each |
			(entityCache at: each asXMLURI ifAbsent: ['']) notEmpty]).

	"check for re-requesting"
	entityCacheCopy := entityCache copy.
	SAXHandler parse: self sourceXML.
	self assert:
		(self externalEntityURLs allSatisfy: [:each |
			(entityCache at: each asXMLURI) == (entityCacheCopy at: each asXMLURI)]).