private
beforeAdding: anObject
	anObject element
		ifNotNil: [XMLDOMException signal: 'Cannot add attribute node from other element']