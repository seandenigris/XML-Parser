private
pushElement: anElement
	self nodeStack ifNotEmpty: [self topNode addElement: anElement].
	self pushNode: anElement.