instance creation
element: anElement attribute: anAttribute type: aType default: aDefaultDeclaration
	^ self new
		setElement: anElement
		attribute: anAttribute
		type: aType
		default: aDefaultDeclaration