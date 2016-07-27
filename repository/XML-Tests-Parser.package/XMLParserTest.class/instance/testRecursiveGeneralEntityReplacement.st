tests
testRecursiveGeneralEntityReplacement
	| limit entityDeclarations |

	limit := XMLTokenizer new maxEntityReplacementDepth.
	entityDeclarations :=
		self
			recursiveEntityDeclarationsNamed: 'entity'
			depth: limit
			isParameter: false.
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE root [', entityDeclarations, ']>
				<root>&entity1;</root>']
		raise: XMLEntityDepthException.

	entityDeclarations :=
		self
			recursiveEntityDeclarationsNamed: 'entity'
			depth: limit + 1
			isParameter: false.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [', entityDeclarations, ']>
				<root>&entity1;</root>']
		raise: XMLEntityDepthException.