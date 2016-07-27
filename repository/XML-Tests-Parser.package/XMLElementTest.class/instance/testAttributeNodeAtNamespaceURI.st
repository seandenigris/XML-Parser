tests
testAttributeNodeAtNamespaceURI
	| element |

	element := self newElementWithAttributes.
	self assert:
		(element attributeNodeAt: 'prefix:three' namespaceURI: 'prefixNS') ==
			(element attributeNodes third).
	self assert:
		(element attributeNodeAt: 'three' namespaceURI: 'prefixNS') isNil.
	self assert:
		(element attributeNodeAt: 'prefix:three' namespaceURI: 'absent') isNil.