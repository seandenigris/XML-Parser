private
changedChildNode: aNode
	self attributesByName
		removeKey: (self attributesByName keyAtValue: aNode);
		at: aNode name put: aNode