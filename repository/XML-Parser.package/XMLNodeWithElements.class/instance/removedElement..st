notifications
removedElement: anElement
	self removedNode: anElement.
	anElement document: nil.