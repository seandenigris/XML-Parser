tests
testRemoveAt
	| list observer |

	super testRemoveAt.

	list := self listWithSingleElement.
	self
		should: [list removeAt: 1]
		remove: self singleElement
		fromAndNotifyOf: list.

	observer := XMLStubListObserver new.
	list addObserver: observer.
	self
		should: [list removeAt: 1] raise: Error;
		assert: observer notifications isEmpty.
	