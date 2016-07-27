assertions
should: aBlock add: anElement toAndNotifyOf: aList
	self
		should: aBlock
		addAll: (Array with: anElement)
		toAndNotifyOf: aList