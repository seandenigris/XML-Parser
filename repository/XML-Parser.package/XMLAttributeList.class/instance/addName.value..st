adding
addName: aName value: aValue
	^ self addLast:
		(XMLAttribute
			name: aName
			value: aValue
			scope: self scope)