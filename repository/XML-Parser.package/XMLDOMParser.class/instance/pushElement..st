private
pushElement: anElement

	self nodeStack notEmpty
		ifTrue: [self topNode addElement: anElement].

	self pushNode: anElement.