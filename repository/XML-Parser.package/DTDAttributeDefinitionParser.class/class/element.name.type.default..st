instance creation
element: anElement name: aName type: aType default: aDefaultDeclaration
	^ self new
		setElement: anElement
		name: aName
		type: aType
		default: aDefaultDeclaration