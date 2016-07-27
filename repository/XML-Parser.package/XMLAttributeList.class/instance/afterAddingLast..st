private
afterAddingLast: aNode
	self attributeNodesByName
		at: aNode name ifPresent: [:oldNode |
			self
				replaced: oldNode
				with: aNode 
				at: self size];
		at: aNode name put: aNode.
	observer ifNotNil: [observer addedAttribute: aNode].