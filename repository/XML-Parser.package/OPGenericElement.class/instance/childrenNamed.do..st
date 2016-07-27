accessing
childrenNamed: aTag do: aBlock
	self allChildrenDo: [:each |
		each tag asLowercase = aTag asLowercase ifTrue: [ 
			aBlock value: each ] ]