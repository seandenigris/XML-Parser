accessing
prefix: aPrefix
	self changeWith: [
		aPrefix isEmptyOrNil
			ifTrue: [qualified := self localPart]
			ifFalse: [qualified := aPrefix, ':', self localPart]]