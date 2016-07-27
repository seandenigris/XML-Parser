tests
testRecursiveParameterEntityReplacementPastLimit
	| limit xml entityDeclarations |

	limit := XMLTokenizer new maxEntityReplacementDepth.
	entityDeclarations :=
		self
			recursiveEntityDeclarationsNamed: 'entity'
			depth: limit + 1
			isParameter: true.
	xml := '<!DOCTYPE root [', entityDeclarations, ' %entity1;]><root/>'.

	self
		should: [SAXHandler parse: xml]
		raise: XMLLimitException.