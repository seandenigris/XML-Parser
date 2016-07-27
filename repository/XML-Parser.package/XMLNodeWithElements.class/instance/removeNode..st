accessing
removeNode: aNode

	^ aNode isTag
		ifTrue: [self removeElement: aNode]
		ifFalse: [self removeChildNode: aNode]