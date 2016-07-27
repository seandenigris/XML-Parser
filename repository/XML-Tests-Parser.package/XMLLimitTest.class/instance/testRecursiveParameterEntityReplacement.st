tests
testRecursiveParameterEntityReplacement
	| limit entityDeclarations xml |

	limit := XMLTokenizer new maxEntityReplacementDepth.
	entityDeclarations :=
		self
			recursiveEntityDeclarationsNamed: 'entity'
			depth: limit
			isParameter: true.
	xml := '<!DOCTYPE root [', entityDeclarations, ' %entity1;]><root/>'.

	self
		shouldnt: [SAXHandler parse: xml]
		raise: XMLLimitException.