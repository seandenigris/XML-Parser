adding
addName: aName value: aValue scope: aScope
	^ self addLast:
			(XMLAttribute
				name: aName
				value: aValue
				scope: aScope)