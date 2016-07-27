tests
testRemoveLastFew
	| list removedElements |

	1 to: self listElements size do: [:i |
		list := self listWithElements.
		removedElements := list removeLast: i.
		self
			assert: removedElements asArray = (self listElements last: i) asArray;
			assert: list = (self listClass newFrom: (self listElements allButLast: i));
			assert: (list removeFirst: 0) isEmpty;
			should: [self emptyList removeFirst: i] raise: Error].