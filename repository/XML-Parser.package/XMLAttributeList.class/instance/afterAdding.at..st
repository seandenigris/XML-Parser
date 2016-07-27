private
afterAdding: aNode at: anIndex
	self attributeNodesByName
		at: aNode name ifPresent: [:oldNode |
			self
				replaced: oldNode
				with: aNode 
				at: anIndex];
		at: aNode name put: aNode.
	observer ifNotNil: [observer addedAttribute: aNode].