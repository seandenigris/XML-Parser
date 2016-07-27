tests
testRecursiveGeneralEntityReplacementPastLimit
	| limit entityDeclarations xml |

	limit := XMLTokenizer new maxEntityReplacementDepth.
	entityDeclarations :=
		self
			recursiveEntityDeclarationsNamed: 'entity'
			depth: limit + 1
			isParameter: false.
	xml := '<!DOCTYPE root [', entityDeclarations, ']><root>&entity1;</root>'.

	self
		should: [SAXHandler parse: xml]
		raise: XMLLimitException.