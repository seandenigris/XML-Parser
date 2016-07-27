enumerating
ancestorsDo: aBlock
	self hasParent
		ifTrue: [
			aBlock value: self parent.
			self parent ancestorsDo: aBlock]