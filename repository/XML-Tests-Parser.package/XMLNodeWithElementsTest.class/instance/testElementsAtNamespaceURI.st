tests
testElementsAtNamespaceURI
	| root namedElements |

	root := self newNodeWithElements firstElement.
	self assert: (root elementsAt: 'four' namespaceURI: 'absent') isEmpty.

	namedElements := root elementsAt: 'four' namespaceURI: 'testNS'.
	self assert: namedElements size = 1.
	self
		assertList: namedElements
		selects:
			(root elements select: [:each |
				(each isNamed: 'four') and: [each namespaceURI = 'testNS']]).

	root removeNode: namedElements first.
	self assert: (root elementsAt: 'four' namespaceURI: 'testNS') isEmpty.