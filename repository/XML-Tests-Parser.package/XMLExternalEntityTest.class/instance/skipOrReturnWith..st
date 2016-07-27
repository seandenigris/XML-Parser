private
skipOrReturnWith: aBlock
	self isSkipping
		ifTrue: [
			(self respondsTo: #skip)
				ifTrue: [self skip]
				ifFalse: [aBlock value]]