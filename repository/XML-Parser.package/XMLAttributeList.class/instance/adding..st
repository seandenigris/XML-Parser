private
adding: anObject
	anObject hasParent ifFalse: [^ self].

	XMLDOMException signal: 'Cannot add attribute node that already has a parent'.