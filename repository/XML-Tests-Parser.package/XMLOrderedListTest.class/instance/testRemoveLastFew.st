tests
testRemoveLastFew
	| list removedElements |

	list := self listWithElements.
	removedElements := list removeLast: 2.
	self
		assert: removedElements asArray = (self listElements last: 2);
		assert: list = (self listWithElements allButLast: 2);
		assert: (list removeLast: 0) isEmpty;
		should: [list removeLast: list size + 1] raise: Error.