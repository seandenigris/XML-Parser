assertions
should: aBlock add: anElement toAndNotify: aList
	self
		should: aBlock
		addAll: (Array with: anElement)
		toAndNotify: aList