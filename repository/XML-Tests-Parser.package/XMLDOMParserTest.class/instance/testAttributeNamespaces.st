tests
testAttributeNamespaces
	| document  people |

	document := XMLDOMParser parse: self addressBookNamespacesXMLWithPrefixes.
	people := document allElementsNamed: 'person' namespaceURI: 'personNS'.
	self assert: people notEmpty.
	
	people do: [:each |
		self
			assert: each hasAttributes;
			deny: each attributeNames isEmpty;
			assert:
				(each attributeNames allSatisfy: [:name |
					(each attributeNodeAt: name namespaceURI: 'defaultNS') isNil]);
			assert: (each attributeNodeAt: 'ps:family-name' namespaceURI: 'personNS') notNil].