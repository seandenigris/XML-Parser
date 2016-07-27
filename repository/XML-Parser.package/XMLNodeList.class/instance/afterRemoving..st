private
afterRemoving: aNode
	observer ifNil: [^ self].

	aNode isElement
		ifTrue: [observer removedElement: aNode]
		ifFalse: [observer removedNode: aNode].