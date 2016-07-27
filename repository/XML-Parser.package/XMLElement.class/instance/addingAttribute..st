notifications
addingAttribute: anAttribute
	anAttribute element
		ifNotNil: [XMLDOMException signal: 'Cannot add attribute node from other element']