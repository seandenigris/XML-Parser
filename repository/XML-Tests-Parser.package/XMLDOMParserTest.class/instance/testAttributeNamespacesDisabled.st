tests
testAttributeNamespacesDisabled
	| document  people |

	document :=
		XMLDOMParser
			parse: self addressBookNamespacesXMLWithPrefixes
			usingNamespaces: false.
	people := document allElementsNamed: 'person'.
	self assert: people notEmpty.
	people do: [:each |
		self
			assert: each hasAttributes;
			deny: each attributeNames isEmpty;
			assert: (each attributeNodeAt: 'ps:family-name' namespaceURI: 'personNS') isNil].