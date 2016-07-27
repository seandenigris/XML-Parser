tests
testRemoveLast
	| list observer |

	super testRemoveLast.

	list := self listWithSingleElement.
	self
		should: [list removeLast]
		remove: self singleElement
		fromAndNotifyOf: list.

	observer := XMLStubListObserver new.
	list addObserver: observer.
	self
		should: [list removeLast] raise: Error;
		assert: observer notifications isEmpty.
	