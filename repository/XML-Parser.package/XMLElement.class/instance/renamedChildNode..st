private
renamedChildNode: aNode
	super renamedChildNode: aNode.
	aNode isAttribute ifTrue: [self attributeNodes renamedNode: aNode]