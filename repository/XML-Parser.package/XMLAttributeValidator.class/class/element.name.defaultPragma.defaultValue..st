instance creation
element: anElement name: aName defaultPragma: aPragma defaultValue: aValue
	^ self new
		setElement: anElement
		name: aName
		defaultPragma: aPragma
		defaultValue: aValue