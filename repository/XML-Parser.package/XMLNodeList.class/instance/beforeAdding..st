private
beforeAdding: aNode
	aNode hasParent
		ifTrue: [XMLDOMException signal: 'Cannot add child node that already has a parent']