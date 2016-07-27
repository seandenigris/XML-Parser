private
afterAdding: aNode
	observer ifNotNil: [observer addedNode: aNode]