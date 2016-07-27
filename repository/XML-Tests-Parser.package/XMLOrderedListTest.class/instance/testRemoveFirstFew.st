tests
testRemoveFirstFew
	| list removedElements |

	list := self listWithElements.
	removedElements := list removeFirst: 2.
	self
		assert: removedElements asArray = (self listElements copyFrom: 1 to: 2);
		assert: list = (self listWithElements allButFirst: 2);
		assert: (list removeFirst: 0) isEmpty;
		should: [list removeFirst: list size + 1] raise: Error.