tests
testDescendentElementsNamedNamespaceURI
	| nodeWithElements descendentElements namedElements |

	nodeWithElements := self newNodeWithElements.
	self assert:
		(nodeWithElements
			descendentElementsNamed: 'four'
			namespaceURI: 'absent') isEmpty.

	descendentElements := nodeWithElements descendentElements.
	namedElements :=
		nodeWithElements
			descendentElementsNamed: 'four'
			namespaceURI: 'testNS'. 
	self
		assert: namedElements size = 2;
		assertList: namedElements
		selects:
			(descendentElements select: [:each |
				(each isNamed: 'four')
					and: [each namespaceURI = 'testNS']]).