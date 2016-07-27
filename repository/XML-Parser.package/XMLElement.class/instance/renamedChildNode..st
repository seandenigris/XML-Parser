as yet unclassified
renamedChildNode: aNode
	super renamedChildNode: aNode.
	aNode isAttribute ifTrue: [self attributeList renamedNode: aNode]