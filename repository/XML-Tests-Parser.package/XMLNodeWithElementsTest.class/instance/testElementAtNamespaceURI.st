tests
testElementAtNamespaceURI
	| root element |

	root := self newNodeWithElements firstElement.
	self assert: (root elementAt: 'four' namespaceURI: 'absent') isNil.

	element := root elementAt: 'four' namespaceURI: 'testNS'.
	self deny: element isNil.
	self assert:
		element ==
			(root elements detect: [:each |
				(each isNamed: 'four') and: [each namespaceURI = 'testNS']]).

	root removeNode: element.
	self deny: (root elementAt: 'four' namespaceURI: 'testNS') == element.