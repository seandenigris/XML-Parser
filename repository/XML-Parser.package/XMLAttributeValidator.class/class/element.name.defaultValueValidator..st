instance creation
element: anElement name: aName defaultValueValidator: aDefaultValueValidator
	^ self new
		setElement: anElement
		name: aName
		defaultValueValidator: aDefaultValueValidator