instance creation
element: anElement attribute: anAttribute defaultValidator: aDefaultValidator
	^ (self classForAttribute: anAttribute) new
		setElement: anElement
		attribute: anAttribute
		defaultValidator: aDefaultValidator