private
nodeStack
	^ nodeStack ifNil: [nodeStack := OrderedCollection new: 15]