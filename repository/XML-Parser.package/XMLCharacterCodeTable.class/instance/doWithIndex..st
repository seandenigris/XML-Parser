enumerating
doWithIndex: aBlock
	self codeIndexesDo: [:each | aBlock value: (self at: each) value: each]