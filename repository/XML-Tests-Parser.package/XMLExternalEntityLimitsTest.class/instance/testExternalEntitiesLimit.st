tests
testExternalEntitiesLimit
	| entityLimit xml parser externalEntityResolver |

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	entityLimit := 2.
	xml :=
		(self doctypeWithDeclarationsForEntityURIs:
			(self musicXMLExternalEntityURLs copyFrom: 1 to: entityLimit)),
		'<test/>'.
	(parser := SAXHandler on: xml)
		resolvesExternalEntities: true.
	(externalEntityResolver := parser externalEntityResolver)
		maxExternalEntities: entityLimit;
		clearEntityCache.
	self
		shouldnt: [parser parseDocument]
		raise: XMLLimitException.
	self assert: externalEntityResolver totalResolvedEntities = entityLimit.

	"reusing the parser shouldn't trigger the limit"
	parser on: xml.
	externalEntityResolver := parser externalEntityResolver.
	self
		assert: parser resolvesExternalEntities;
		assert: externalEntityResolver maxExternalEntities = entityLimit;
		assert: externalEntityResolver totalResolvedEntities = 0.
	externalEntityResolver clearEntityCache.
	self
		shouldnt: [parser parseDocument]
		raise: XMLLimitException.
	self assert: externalEntityResolver totalResolvedEntities = entityLimit.

	((parser := SAXHandler on: xml)
		resolvesExternalEntities: true;
		externalEntityResolver)
			clearEntityCache;
			maxExternalEntities: entityLimit - 1.
	self
		should: [parser parseDocument]
		raise: XMLLimitException.