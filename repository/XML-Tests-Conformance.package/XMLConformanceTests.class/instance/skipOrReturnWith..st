private
skipOrReturnWith: aBlock
	"skip is not portable to squeak"
	(self respondsTo: #skip)
		ifTrue: [self skip]
		ifFalse: [aBlock value]