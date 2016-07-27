deprecated
addName: aName value: aValue
	self deprecated: 'use #addAttributeName:value: instead'.
	^ self
		addAttributeName: aName
		value: aValue