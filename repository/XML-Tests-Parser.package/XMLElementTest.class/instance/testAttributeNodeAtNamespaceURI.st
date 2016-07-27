tests
testAttributeNodeAtNamespaceURI
	| element |

	element := self newElementWithAttributes.
	self assert:
		(element attributeNodeAt: 'prefix:three' namespaceURI: 'absent') isNil.
	self assert:
		(element attributeNodeAt: 'prefix:three' namespaceURI: 'testNS') ==
			(element attributeNodes third).