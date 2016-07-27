assertions
should: aBlock remove: anElement fromAndNotify: aList
	self
		should: aBlock
		removeAll: (Array with: anElement)
		fromAndNotify: aList