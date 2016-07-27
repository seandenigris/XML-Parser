accessing
elementsAndContents
	^ self nodes select: [:each | each isTagOrText]