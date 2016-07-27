tests
testRemoveIfAbsent
	| list observer |

	super testRemoveIfAbsent.

	list := self listWithSingleElement.
	self
		should: [list remove: self singleElement ifAbsent: [nil]]
		remove: self singleElement
		fromAndNotifyOf: list.

	observer := XMLStubListObserver new.
	list addObserver: observer.
	self
		assert: (list remove: self singleElement ifAbsent: [nil]) isNil;
		assert: observer notifications isEmpty.
	