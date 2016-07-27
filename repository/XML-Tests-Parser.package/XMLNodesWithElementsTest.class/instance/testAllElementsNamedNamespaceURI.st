tests
testAllElementsNamedNamespaceURI
	| nodeWithElements allElements namedElements |

	nodeWithElements := self newNodesWithElements.
	allElements := nodeWithElements allElements.
	namedElements := nodeWithElements allElementsNamed: 'c1' namespaceURI: 'testNS'. 
	self
		assert: namedElements size = 1;
		assertList: namedElements
		selects:
			(allElements select: [:each |
				(each isNamed: 'c1')
					and: [each namespaceURI = 'testNS']]).