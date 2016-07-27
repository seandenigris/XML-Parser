tests
testDescendentElementsNamedNamespaceURI
	| nodeWithElements descendentElements namedElements |

	nodeWithElements := self newNodesWithElements.
	descendentElements := nodeWithElements descendentElements.
	namedElements := nodeWithElements descendentElementsNamed: 'c1' namespaceURI: 'testNS'. 
	self
		assert: namedElements size = 1;
		assertList: namedElements
		selects:
			(descendentElements select: [:each |
				(each isNamed: 'c1')
					and: [each namespaceURI = 'testNS']]).