accessing
elements
	^self elementsAndContents select: [:each | each isText not]