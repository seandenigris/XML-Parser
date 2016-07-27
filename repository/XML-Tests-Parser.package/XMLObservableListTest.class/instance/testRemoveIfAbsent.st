tests
testRemoveIfAbsent
	| list observer |

	super testRemoveIfAbsent.

	list := self listWithSingleElement.
	self
		should: [list remove: self singleElement ifAbsent: [nil]]
		remove: self singleElement
		fromAndNotifyOf: list.

	observer := XMLRecordingListObserver new.
	list observer: observer.
	self
		assert: (list remove: self singleElement ifAbsent: [nil]) isNil;
		deny: observer hasNotifications.