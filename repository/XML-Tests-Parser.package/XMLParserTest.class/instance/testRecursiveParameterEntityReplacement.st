tests
testRecursiveParameterEntityReplacement
	| limit entityDeclarations |

	limit := XMLTokenizer new maxEntityReplacementDepth.
	entityDeclarations :=
		self
			recursiveEntityDeclarationsNamed: 'entity'
			depth: limit
			isParameter: true.
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE root [',
					entityDeclarations, '
					%entity1;]>
				<root/>']
		raise: XMLEntityDepthException.

	entityDeclarations :=
		self
			recursiveEntityDeclarationsNamed: 'entity'
			depth: limit + 1
			isParameter: true.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [',
					entityDeclarations,'
					%entity1;]>
				<root/>']
		raise: XMLEntityDepthException.