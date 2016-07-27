private
topNode
	^ self nodeStack isEmpty
		ifTrue: [nil]
		ifFalse: [self nodeStack last]