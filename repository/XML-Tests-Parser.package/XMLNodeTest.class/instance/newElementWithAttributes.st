instance creation
newElementWithAttributes
	| element |

	element :=
		XMLElement
			name: 'test'
			namespaces: self namespaceAssociations.
	self attributeAssociations do: [:each |
		element attributeNodes addLast:
			(XMLAttribute
				name: each key
				value: each value)].
	^ element.