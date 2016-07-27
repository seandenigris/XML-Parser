tests
testRecursiveGeneralEntityReplacement
	| limit entityDeclarations xml |

	limit := XMLTokenizer new maxEntityReplacementDepth.
	entityDeclarations :=
		self
			recursiveEntityDeclarationsNamed: 'entity'
			depth: limit
			isParameter: false.
	xml := '<!DOCTYPE root [', entityDeclarations, ']><root>&entity1;</root>'.

	self
		shouldnt: [SAXHandler parse: xml]
		raise: XMLLimitException.