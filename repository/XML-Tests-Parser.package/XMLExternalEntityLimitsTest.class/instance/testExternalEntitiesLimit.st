tests
testExternalEntitiesLimit
	| parser xml entityLimit |

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	entityLimit := 2.
	xml := self doctypeWithDeclarationsForEntityURIs: (self externalEntityURLs copyFrom: 1 to: entityLimit).
	((parser := SAXHandler on: xml)
		resolvesExternalEntities: true;
		externalEntityResolver)
			clearEntityCache;
			maxExternalEntities: entityLimit.
	self
		shouldnt: [parser parseDocument]
		raise: XMLLimitException.

	((parser := SAXHandler on: xml)
		resolvesExternalEntities: true;
		externalEntityResolver)
			clearEntityCache;
			maxExternalEntities: entityLimit - 1.
	self
		should: [parser parseDocument]
		raise: XMLLimitException.