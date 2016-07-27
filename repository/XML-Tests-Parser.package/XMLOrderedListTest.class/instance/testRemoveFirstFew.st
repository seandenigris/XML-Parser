tests
testRemoveFirstFew
	| list removedElements |

	1 to: self listElements size do: [:i |
		list := self listWithElements.
		removedElements := list removeFirst: i.
		self
			assert: removedElements asArray = (self listElementsFirst: i);
			assert: list = (self listClass newFrom: (self listElements allButFirst: i));
			assert: (list removeFirst: 0) isEmpty;
			should: [self emptyList removeFirst: i] raise: Error].