assertions
should: aBlock remove: anElement fromAndNotifyOf: aList
	self
		should: aBlock
		removeAll: (Array with: anElement)
		fromAndNotifyOf: aList