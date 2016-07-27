tests
testRemoveLastFew
	| list removedElements |

	1 to: self listElements size do: [:i |
		list := self listWithElements.
		removedElements := list removeLast: i.
		self
			assert: removedElements asArray = (self listElementsLast: i) asArray;
			assert: list = (self listClass newFrom: (self listElements allButLast: i));
			assert: (list removeLast: 0) isEmpty;
			should: [self emptyList removeLast: i] raise: Error].