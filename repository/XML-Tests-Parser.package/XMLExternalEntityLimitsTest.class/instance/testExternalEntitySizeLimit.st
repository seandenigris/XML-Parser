tests
testExternalEntitySizeLimit
	| parser url xml size |

	self skipOrReturnWith: [^ self].

	url := self externalEntityURLs first asXMLURI.
	xml := self doctypeWithDeclarationsForEntityURIs: (Array with: url asString).
	size := url get contents size.
	((parser := SAXHandler on: xml)
		resolvesExternalEntities: true;
		externalEntityResolver)
			clearEntityCache;
			maxExternalEntitySize: size.
	self
		shouldnt: [parser parseDocument]
		raise: XMLLimitException.

	((parser := SAXHandler on: xml)
		resolvesExternalEntities: true;
		externalEntityResolver)
			clearEntityCache;
			maxExternalEntitySize: size - 1.
	self
		should: [parser parseDocument]
		raise: XMLLimitException.