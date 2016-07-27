private
pushElement: anElement
	self nodeStack ifNotEmpty: [self topNode addNode: anElement].
	self pushNode: anElement.