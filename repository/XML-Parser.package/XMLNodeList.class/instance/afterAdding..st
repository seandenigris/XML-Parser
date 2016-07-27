private
afterAdding: aNode
	observer ifNil: [^ self].

	aNode isElement
		ifTrue: [observer addedElement: aNode]
		ifFalse: [observer addedNode: aNode].