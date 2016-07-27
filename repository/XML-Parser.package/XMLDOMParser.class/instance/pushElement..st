private
pushElement: anElement

	(self incremental not and: [self stack notEmpty])
			ifTrue: [self top addElement: anElement].

	self push: anElement.