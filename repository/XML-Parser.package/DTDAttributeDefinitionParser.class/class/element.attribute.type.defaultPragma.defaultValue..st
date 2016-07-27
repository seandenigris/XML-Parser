instance creation
element: anElement attribute: anAttribute type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	^ self new
		setElement: anElement
		attribute: anAttribute
		type: aType
		defaultPragma: aDefaultPragma
		defaultValue: aDefaultValue