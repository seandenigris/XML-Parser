tests
testAttributeNodeAtNamespaceURIIfAbsent
	| element  |

	element := self newElementWithAttributes.
	self assert:
		(element
			attributeNodeAt: 'prefix:three'
			namespaceURI: 'absent'
			ifAbsent: [#absent]) = #absent.
	self assert:
		(element
			attributeNodeAt: 'prefix:three'
			namespaceURI: 'testNS'
			ifAbsent: [#absent]) ==
				(element attributeNodes third).