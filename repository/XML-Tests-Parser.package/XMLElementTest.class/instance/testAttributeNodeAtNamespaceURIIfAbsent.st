tests
testAttributeNodeAtNamespaceURIIfAbsent
	| element |

	element := self newElementWithAttributes.
	self assert:
		(element
			attributeNodeAt: 'prefix:two'
			namespaceURI: 'prefixNS'
			ifAbsent: [#absent]) =
				element attributeNodes third.
	self assert:
		(element
			attributeNodeAt: 'two'
			namespaceURI: 'prefixNS'
			ifAbsent: [#absent]) =
				element attributeNodes third.
	self assert:
		(element
			attributeNodeAt: 'prefix:two'
			namespaceURI: 'absent'
			ifAbsent: [#absent]) = #absent.