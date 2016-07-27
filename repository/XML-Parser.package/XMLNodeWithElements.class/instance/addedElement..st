notifications
addedElement: anElement
	self addedNode: anElement.
	anElement
		configuration: self configuration;
		document: self document.