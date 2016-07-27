tests
testRemoveLastFew
	| list |
	
	super testRemoveLastFew.

	1 to: self listElements size do: [:i |
		list := self listWithElements.
		self
			should: [list removeLast: i]
			removeAll: (self listElementsLast: i) reversed
			fromAndNotify: list].
	list := self emptyList.
	self
		should: [list removeFirst: list size + 1] raise: Error;
		deny: list observer hasNotifications.