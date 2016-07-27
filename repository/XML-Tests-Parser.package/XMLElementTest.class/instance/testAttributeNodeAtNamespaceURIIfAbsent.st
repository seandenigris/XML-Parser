tests
testAttributeNodeAtNamespaceURIIfAbsent
	| element |

	element := self newElementWithAttributes.
	self assert:
		(element
			attributeNodeAt: 'prefix:three'
			namespaceURI: 'prefixNS'
			ifAbsent: [#absent]) ==
				(element attributeNodes third).
	self assert:
		(element
			attributeNodeAt: 'three'
			namespaceURI: 'prefixNS'
			ifAbsent: [#absent]) = #absent.
	self assert:
		(element
			attributeNodeAt: 'prefix:three'
			namespaceURI: 'absent'
			ifAbsent: [#absent]) = #absent.