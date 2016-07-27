tests
testRemoveFirst
	| list observer |

	super testRemoveFirst.

	list := self listWithSingleElement.
	self
		should: [list removeFirst]
		remove: self singleElement
		fromAndNotifyOf: list.

	observer := XMLStubListObserver new.
	list observer: observer.
	self
		should: [list removeFirst] raise: Error;
		assert: observer notifications isEmpty.
	