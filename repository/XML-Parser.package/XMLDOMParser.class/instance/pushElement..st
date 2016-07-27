private
pushElement: anElement

	(self incremental not and: [self nodeStack notEmpty])
			ifTrue: [self topNode addElement: anElement].

	self pushNode: anElement.