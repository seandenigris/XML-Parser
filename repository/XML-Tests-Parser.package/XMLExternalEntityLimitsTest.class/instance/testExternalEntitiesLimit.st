tests
testExternalEntitiesLimit
	"
	(self isSkipping: false) testExternalEntitiesLimit
	"
	| parser xml entityLimit |

	self isSkipping
		ifTrue: [self skip].

	entityLimit := 2.
	xml := self doctypeWithDeclarationsForEntityURIs: (self externalEntityURLs first: entityLimit).
	parser := SAXHandler on: xml.
	parser externalEntityResolver
		clearEntityCache;
		maxExternalEntities: entityLimit.
	self
		shouldnt: [parser parseDocument]
		raise: XMLLimitException.

	parser := SAXHandler on: xml.
	parser externalEntityResolver
		clearEntityCache;
		maxExternalEntities: entityLimit - 1.
	self
		should: [parser parseDocument]
		raise: XMLLimitException.