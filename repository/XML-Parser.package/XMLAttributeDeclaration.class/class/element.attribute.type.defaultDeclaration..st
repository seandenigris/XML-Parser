instance creation
element: anElementName attribute: anAttributeName type: aType defaultDeclaration: aDefaultDeclaration
	^ self new
		setElement: anElementName
		attribute: anAttributeName
		type: aType
		defaultDeclaration: aDefaultDeclaration